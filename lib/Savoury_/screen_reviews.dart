// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Savoury_/screen_chitiesa.dart';
import 'package:my_app/Savoury_/screen_luois.dart';
// import 'package:my_app/screen_listview.dart';
import 'package:my_app/firebase/test_data.dart';
class Screen_reviews extends StatelessWidget {

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  // final Color AppbarColor = Color(0xff4e55d9);
  // final Color NtColor = Color(0xffa9d1da);
  // final Color NtmColor = Color(0xff667bf2);
  // final Color TextColor = Color(0xff667bf2);
  // final Color highslightColor = Color(0xffa0a4f2);//bg
  final Color foregroundColor = Colors.white;
  final Color AppbarColor = Color(0xffbf308d);
  final Color ImgColor = Color(0xFFD94389);
  final Color NtmColor = Color(0xffd94389);
  final Color NtColor = Color(0xfff28dcf);
  final Color TextColor = Color(0xfff2aec7);
  final Color highslightColor = Color(0xfff2c2c6);//bg

  var Data = Data_Savoury().tagData;
  var data = Data_Savoury().Data_Savoury_00;
  /*Set Images = Data_Destination().Images;
  Set Names =Data_Destination().Name;
  Set Review =Data_Destination().Review;
  Set Link =Data_Destination().Link;
  int a=0;

   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text('Chọn món thôi'),
        backgroundColor: AppbarColor,
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.centerLeft,
            end: new Alignment(1.0, 0.0),
            // 10% of the width, so there are ten blinds.
            colors: [this.highslightColor, this.highslightColor],
            // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(top : 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NtColor,// Colors.deepPurpleAccent[100],
                          elevation: 10,
                          minimumSize: Size( 100, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_luois();
                        },
                          settings: const RouteSettings(
                            arguments: 0,
                          ),
                        ));
                      },
                      child: Text(
                        //'tên tag',
                        Data[0],
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color: Colors.yellow,//TextColor,//Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NtColor,// Colors.deepPurpleAccent[100],
                          elevation: 10,
                          minimumSize: Size( 100, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_luois();
                        },
                          settings: const RouteSettings(
                            arguments: 1,
                          ),
                        ));
                      },
                      child: Text(
                        Data[1],
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color:Colors.yellow,//TextColor,// Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NtColor,// Colors.deepPurpleAccent[100],
                          elevation: 10,
                          minimumSize: Size( 100, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      ),
                      onPressed: (){

                        Data_Savoury().read_drink();
                        print("vl");
                        print(Data_Savoury().Data_Savoury_03.length);
                        print("lm");

                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_luois();
                          //return Screen_3_4();
                        },
                          settings: const RouteSettings(
                            arguments: 2,
                          ),
                        ));
                      },
                      child: Text(
                        Data[2],
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color:Colors.yellow,//TextColor,// Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),

            
            

            Expanded(
              child:Container(
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  /*

                   */
                  color: highslightColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                              backgroundColor: NtmColor,// Colors.deepPurple[300],
                              // elevation: 10,
                              minimumSize: Size( 100, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              )
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return Screen_3_3();
                            },
                              settings: const RouteSettings(
                                arguments: 0,
                              ),
                            ));
                          },
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                      image: NetworkImage(data[0].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                              Expanded(
                              child: Text(
                                //'tên món',
                                data[0].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:TextColor,// Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                            ],
                          ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,// Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 1,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[1].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[1].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TextColor,//Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 2,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[2].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[2].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TextColor,//Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child:Container(
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  /*

                   */
                  color: highslightColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 3,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[3].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[3].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TextColor,// Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 4,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[4].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[4].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:TextColor,// Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 5,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[5].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[5].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TextColor,//Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child:Container(
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  /*

                   */
                  color: highslightColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 6,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[6].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[6].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TextColor,//Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 7,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[7].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[7].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TextColor,//Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.deepPurple[300],
                            // elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          },
                            settings: const RouteSettings(
                              arguments: 8,
                            ),
                          ));
                        },
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2 ,
                              child: Container(
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[8].Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(0.0),
                                  ),
                                  //color: Colors.red,
                                ),
                              ),),
                            Expanded(
                              child: Text(
                                data[8].Names,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:TextColor,// Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}