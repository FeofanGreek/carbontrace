import 'package:carbontrace/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'dialoScreen.dart';
import 'info.dart';
import 'launchscreen.dart';


String itemOne ='Выберите значение';
String itemTwo ='Выберите значение';
String itemTree ='Выберите значение';
List itemsTwo = [];
List itemsTree = [];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Мои зеленые налоги',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: launchScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    //dialogScreen(context,);
  }

  stepTwo() {
    if (itemOne != 'Выберите значение') {
    for(int i = 0; i < items.length; i++){
    items[i]['name'] == itemOne ? itemsTwo = items[i]['items'] : null;
    //print(items[i]['items']);
    }
    itemsTree = [];
  } else {
      itemsTwo = [];
      itemsTree.clear();
    }
    itemTwo ='Выберите значение';
    itemTree ='Выберите значение';
    setState(() {});
  }
  stepTree(){
    itemsTree = [];
    if (itemTwo != 'Выберите значение') {
      for (int i = 0; i < items.length; i++) {
        if (items[i]['name'] == itemOne) {
          for (int ii = 0; ii < items[i]['items'].length; ii++) {
            items[i]['items'][ii]['item'] == itemTwo ? itemsTree.add(
                items[i]['items'][ii]['value']) : null;
          }
        }
      }
    }
    itemsTree.length > 1 ? itemTree ='Выберите значение': itemTree = itemsTree[0];
    setState(() {});
  }

  Future<bool> _onBackPressed() {
    if(itemOne != 'Выберите значение' &&  itemTwo == 'Выберите значение' ){
      itemsTwo = [];
      itemsTree = [];
      itemTree = 'Выберите значение';
      itemTwo = 'Выберите значение';
      itemOne = 'Выберите значение';
    } else if(itemTwo != 'Выберите значение'){
      //itemsTwo = [];
      itemsTree = [];
      itemTree = 'Выберите значение';
      itemTwo = 'Выберите значение';
    }

    setState(() {

    });
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child:Scaffold(
      backgroundColor: Color(0xFFb6dbfe),
      appBar: AppBar(
          backgroundColor: Color(0xFF88c0f6),
          brightness: Brightness.dark,
          elevation: 1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          /*leading: GestureDetector(
            onTap: () {}, child: Container(color: Color(0xFF88c0f6), width: 25, height: 25, child:Icon(CupertinoIcons.chevron_back, size:22, color: Colors.white)),),
          */
          title: Text('Мои зеленые налоги', style: TextStyle(fontSize: 18, color: Colors.white)),
          actions: [
            GestureDetector(
              onTap: () {
                //dialogScreen(context,);
                Navigator.pushReplacement (context,
                    MaterialPageRoute(builder: (context) => info()));
              }, child: Container(margin: const EdgeInsets.fromLTRB(20,0,20,0), color: Color(0xFF88c0f6), width: 25, height: 25, child:Icon(CupertinoIcons.info, size:22, color: Colors.white)),),
          ]
      ),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/trees.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
            children: <Widget>[
              itemTree != 'Выберите значение' ? Container(
                margin: EdgeInsets.fromLTRB(20,itemTwo.length < 30 ? 220 : 280,10,20),
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                height: 48,
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed:(){
                    //dialogScreen(context,);
                    Navigator.pushReplacement (context,
                        MaterialPageRoute(builder: (context) => result()));
                  } ,
                  child: Text('Расcчитать', style: TextStyle(fontSize: 14.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF88c0f6),
                    minimumSize: Size(MediaQuery.of(context).size.width - 40, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                ),
              ):Container(),
              itemsTree.length > 0 ? Container(
                margin: EdgeInsets.fromLTRB(20,itemTwo.length < 30 ? 140 : 200 ,20,20),
                alignment: Alignment.topCenter,
                child: itemsTree.length > 1 ? DropdownButton<String>(
                  itemHeight:50,
                  hint: Container(width: MediaQuery.of(context).size.width, padding: const EdgeInsets.fromLTRB(10,10,0,10), color:Colors.white,child:Text(itemTree)),
                  isExpanded: true,
                  items: itemsTree.map<DropdownMenuItem<String>>((value) =>
                  new DropdownMenuItem<String>(
                    value: value,
                    child: new Column(mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start, children:[ Text(value),Divider()]),
                  )
                  ).toList(),
                  onChanged: (value) {
                    //dialogScreen(context,);
                    setState(() {
                      itemTree = value!;
                    });
                  },
                ) : itemTree != 'Выберите значение' ? Container(width: MediaQuery.of(context).size.width-20, padding: const EdgeInsets.fromLTRB(10,10,10,10), color:Colors.white,child:Text('${itemsTree[0]}')) : Container(),
              ) : Container(),
              itemsTwo.length > 0 ? Container(
                margin: const EdgeInsets.fromLTRB(20,80,0,20),
                alignment: Alignment.topCenter,
                child: DropdownButton<String>(
                    itemHeight:itemTwo.length < 30 ? 50 : 100,
                  hint: Container(width: MediaQuery.of(context).size.width, padding: const EdgeInsets.fromLTRB(10,10,0,10), color:Colors.white,child:Text(itemTwo)),
                  isExpanded: true,
                  items: itemsTwo.map<DropdownMenuItem<String>>((value) =>
                  new DropdownMenuItem<String>(
                    value: value["item"],
                    child: new Column(mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start, children:[ Text(value["item"]),Divider()]),
                  )
                  ).toList(),
                  onChanged: (value) {
                    //dialogScreen(context,);
                    setState(() {
                      itemTwo = value!;
                    });
                    stepTree();
                  },
                ),
              ) : Container(),
              Container(
                margin: const EdgeInsets.fromLTRB(20,20,0,20),
                alignment: Alignment.topCenter,
                child: DropdownButton<String>(
                  itemHeight:50,
                  hint: Container(width: MediaQuery.of(context).size.width, padding: const EdgeInsets.fromLTRB(10,10,0,10), color:Colors.white,child:Text(itemOne)),
                  isExpanded: true,
                  items: items.map<DropdownMenuItem<String>>((value) =>
                  new DropdownMenuItem<String>(
                    value: value["name"],
                    child: new Column(mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start, children:[ Text(value["name"]),Divider()]),
                  )
                  ).toList(),
                  onChanged: (value) {
                    //dialogScreen(context,);
                    setState(() {
                      itemOne = value!;
                    });
                    stepTwo();
                  },
                ),
              ),

            ]),
      ),
        )
    );
  }
}
