import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dialoScreen.dart';
import 'main.dart';

class info extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<info> {


  @override
  void initState() {
    super.initState();
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
            leading: GestureDetector(
              onTap: () {
                //dialogScreen(context,);
                Navigator.pushReplacement (context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              }, child: Container(color: Color(0xFF88c0f6), width: 25, height: 25, child:Icon(CupertinoIcons.chevron_back, size:22, color: Colors.white)),),

            title: Text('О приложении', style: TextStyle(fontSize: 18, color: Colors.white)),
            /*actions: [
            GestureDetector(
              onTap: () {
                //scanCard();
              }, child: Container(margin: const EdgeInsets.fromLTRB(20,0,20,0), color: Color(0xFF88c0f6), width: 25, height: 25, child:Icon(Icons.crop_free, size:22, color: Colors.white)),),
          ]*/
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
                  Container(
                    margin: EdgeInsets.fromLTRB(20,450,10,20),
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width - 40,
                    alignment: Alignment.center,
                    child: Text('Разработчики:\nПроданова Наталья Алексеевна, д.э.н., доц., профессор Базовой кафедры финансового контроля, анализа и аудита Главного контрольного управления г. Москвы\n\nБондаренко Татьяна Григорьевна, к.э.н., доц., доцент Базовой кафедры международного права, финансов и экономики Китая\n\nЗацарная Надежда Альбертовна, ассистент, лаборант-исследователь Базовой кафедры международного права, финансов и экономики Китая', style: TextStyle(fontSize: 14.0, color: Color(0xFF000000), fontFamily: 'Inter',),textAlign: TextAlign.left,),
                  ),
                  GestureDetector(onTap:()=> launch('https://www.rea.ru/ru/'), child:Container(
                    margin: EdgeInsets.fromLTRB(20,20,10,20),
                    padding: const EdgeInsets.fromLTRB(5,5,5,5),
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    width: MediaQuery.of(context).size.width - 40,
                    alignment: Alignment.center,
                    child: Text('Федеральное государственное бюджетное образовательное учреждение высшего образования\n«Российский экономический университет имени Г.В. Плеханова»\n\nwww.rea.ru', style: TextStyle(fontSize: 18.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),

                  ),),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,260,10,20),
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    width: MediaQuery.of(context).size.width - 40,
                    alignment: Alignment.center,
                    child: Text('Приложение Мои «зеленые» налоги позволяет сформировать основы ответственного поведения человека и провести расчеты по компенсации  углеродного (карбонового) следа.', style: TextStyle(fontSize: 16.0, color: Color(0xFFFFFFFF), fontFamily: 'Inter',),textAlign: TextAlign.center,),
                  )

                ]),
          ),
          ),
        )
    );
  }
}
