// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'dart:async';
import 'package:my_app/user_/screen_signin.dart';

// import '../user_/screen_2.dart';

// import 'dart:async' show Future;
// import 'package:flutter/services.dart' show rootBundle;


// ignore: camel_case_types
class Screen_one extends StatelessWidget {
  const Screen_one({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'First_screen',
      //theme: ThemeData(
      //  primarySwatch: Colors.indigo,
      //),
      home: DummyWidget(),
    );
  }
}

class DummyWidget extends StatefulWidget {
  @override
  _DummyWidgetState createState() => _DummyWidgetState();
}

class _DummyWidgetState extends State<DummyWidget> {
  final Color backgroundColor = Color(0xfff99a9c);//button
  final Color backgroundColor2 = Color(0xffb5ddd1);//bg
  final Color backgroundColor3 = Color(0xff7e6a35);//ctkt
  final Color backgroundColors = Color(0xffd7a7e9);//sd
  final Color backgroundColor1 = Color(0xffb09bd9);//hntn
  // bool _isNext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,//Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 360,
              height: 190,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://www.studytienganh.vn/upload/2022/02/110441.jpg'),
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.high),
                borderRadius: BorderRadius.all(
                  Radius.circular(90.0),
                ),
                color: Colors.red,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 19.0, top: 90.0, bottom: 90.0),
              child: Row(
                children: <Widget>[
                  Center(
                    child: Text(
                      "'Hôm nay bạn thế nào?'",
                      style: TextStyle(
                        color: backgroundColor1,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                          letterSpacing: 0,
                          wordSpacing: 0,
                          //backgroundColor: Colors.lightGreen,
                          // shadows: [
                          //   Shadow(
                          //       color: backgroundColors,//Colors.purpleAccent,
                          //     offset: Offset(2,1), blurRadius:10
                          //   )]
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  /*Navigator.of(context).pushNamed(/details.routeName);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Screen_2(),
                    //settings: RouteSettings(arguments: a)
                  ));*/
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    //return Screen_2();
                    return Screen_SignIn();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
                    backgroundColor: backgroundColor,//Colors.purple,
                    shadowColor : backgroundColors,//Colors.purpleAccent,
                    elevation: 10,
                    minimumSize: const Size(100,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                child: Text(
                    "Cùng tìm kiếm thôi!",
                  style: TextStyle(
                      color: backgroundColor3,//Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                      wordSpacing: 0,
                      //backgroundColor: Colors.lightGreen,
                  ),
                )
            ),
            // nếu nhấp vào màn hình chuyển Tap
          ],
    ),
      ),
    );
  }
}
