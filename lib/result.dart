import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'dialoScreen.dart';
import 'enddialog.dart';
import 'info.dart';
import 'launchscreen.dart';
import 'main.dart';

String massa = '', penanty = '';

class result extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<result> {

  calculateResult(){
    for (int i = 0; i < items.length; i++) {
      if (items[i]['name'] == itemOne) {
        for (int ii = 0; ii < items[i]['items'].length; ii++) {
          items[i]['items'][ii]['item'] == itemTwo ? massa = items[i]['items'][ii]['efficient'] : null;
          items[i]['items'][ii]['item'] == itemTwo ? penanty = items[i]['items'][ii]['penanty'] : null;
        }
      }
    }
  setState(() {

  });
  }


  @override
  void initState() {
    super.initState();
    //dialogScreen(context,);
    calculateResult();
  }//initState

  Future<bool> _onBackPressed() {
    Navigator.pushReplacement (context,
        MaterialPageRoute(builder: (context) => MyHomePage()));
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
          title: Text('Результаты', style: TextStyle(fontSize: 18, color: Colors.white)),
          actions: [
            GestureDetector(
              onTap: () {
                //dialogScreen(context,);
                Navigator.pushReplacement (context,
                    MaterialPageRoute(builder: (context) => info()));
              }, child: Container(margin: const EdgeInsets.fromLTRB(20,0,20,0), color: Color(0xFF88c0f6), width: 25, height: 25, child:Icon(CupertinoIcons.info, size:22, color: Colors.white)),),
          ]
      ),
      body:SingleChildScrollView( child:Container(
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
              /*Container(
                margin: EdgeInsets.fromLTRB(20,430,10,20),
                padding: const EdgeInsets.fromLTRB(10,10,10,10),
                height: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
                child: Text('Разработчики:\nПроданова Наталья Алексеевна, д.э.н., доц., профессор Базовой кафедры финансового контроля, анализа и аудита Главного контрольного управления г. Москвы\n\nБондаренко Татьяна Григорьевна, к.э.н., доц., доцент Базовой кафедры международного права, финансов и экономики Китая\n\nЗацарная Надежда Альбертовна, ассистент, лаборант-исследователь Базовой кафедры международного права, финансов и экономики Китая', style: TextStyle(fontSize: 14.0, color: Color(0xFF000000), fontFamily: 'Inter',),textAlign: TextAlign.left,),
              ),*/

              Container(
                margin: EdgeInsets.fromLTRB(20,360,10,20),
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                height: 48,
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed:(){
                    itemOne ='Выберите значение';
                    itemTwo ='Выберите значение';
                    itemTree ='Выберите значение';
                    itemsTwo = [];
                    itemsTree = [];
                    setState(() {});
                    dialogEndScreen(context,);
                    //Navigator.pushReplacement (context,
                    //    MaterialPageRoute(builder: (context) => MyHomePage()));
                  } ,
                  child: Text('Новый расчет', style: TextStyle(fontSize: 14.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF88c0f6),
                    minimumSize: Size(MediaQuery.of(context).size.width - 40, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20,20,10,20),
                padding: const EdgeInsets.fromLTRB(5,5,5,5),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
                child: Text('Выброс СО2 в атмосферу составляет $massa т', style: TextStyle(fontSize: 25.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),

              ),
              penanty != 'компенсация не требуется'? Container(
                margin: EdgeInsets.fromLTRB(20,140,10,20),
                padding: const EdgeInsets.fromLTRB(5,5,5,5),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
                child: Text('Чтобы восполнить природные ресурсы посадите: $penanty', style: TextStyle(fontSize: 25.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),

              ) : Container(
                margin: EdgeInsets.fromLTRB(20,140,10,20),
                padding: const EdgeInsets.fromLTRB(5,5,5,5),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.center,
                child: Text('$penanty', style: TextStyle(fontSize: 25.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),

              ),
            ]),
      ),
      ),
        )
    );
  }
}
