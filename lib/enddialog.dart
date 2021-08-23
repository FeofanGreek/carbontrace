import 'dart:io';

import 'package:flutter/material.dart';

import 'main.dart';

dialogEndScreen(var context,){
  return showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0 , 0),
            insetPadding: EdgeInsets.all(0),
            elevation: 0.0,
            content:Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: Container(
                  width: 250,
                  //height: 250
                  height: 100,
                  margin: EdgeInsets.fromLTRB(18,20,18,20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    /*border: Border.all(
                      color: Colors.white,
                      width: 0.5,
                    ),*/
                    borderRadius: BorderRadius.circular(16.5),
                    color: Color(0xFFb6dbfe),
                  ),
                  padding: EdgeInsets.fromLTRB(18,20,18,20),
                  child:  Column(
                      children: <Widget>[
                        //Text('Сделать новый расчет?', textAlign: TextAlign.center,),
                        //SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.fromLTRB(0,10,0,0),
                              child: TextButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                  Navigator.pushReplacement (context,
                                      MaterialPageRoute(builder: (context) => MyHomePage()));
                                } ,
                                child: Text('Да', textAlign: TextAlign.center,),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(MediaQuery.of(context).size.width, 20),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.fromLTRB(0,10,0,0),
                              child: TextButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                  exit(0);
                                } ,
                                child: Text('Нет', textAlign: TextAlign.center,),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(MediaQuery.of(context).size.width, 20),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )


                      ])

              ),
            )
        );
      });

}