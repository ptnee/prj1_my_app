import 'package:flutter/material.dart';
import 'package:my_app/Destination_/screen_chitie1.dart';
import 'package:my_app/Destination_/screen_luoi1.dart';
// import 'package:my_app/screen_3_4.dart';
import 'package:my_app/firebase/test_data.dart';
class Screen_reviews_1 extends StatelessWidget {
  static String tag = 'SignUp-page';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color NtColor = Color(0xfff25c5c);
  final Color NtmColor = Color(0xfff2637e);
  final Color highslightColor = Color(0xfff2b9b3);
  final Color foregroundColor = Colors.white;

  var Data = Data_Destination().tag;
  var data = Data_Destination().Data_Destination_00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text('Chọn địa điểm thôi'),
        backgroundColor: highlightColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
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
                            backgroundColor: NtColor,//Colors.purple[200],
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_luoi1();
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
                            color: Colors.yellow,
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
                            backgroundColor: NtColor,//Colors.purple[200],
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_luoi1();
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
                            color: Colors.yellow,
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
                            backgroundColor: NtColor,// Colors.purple[200],
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_luoi1();
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
                            color: Colors.yellow,
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
                  color: highslightColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[1].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[2].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                  color: highslightColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[3].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[4].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[5].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                  color: highslightColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                //margin: const EdgeInsets.only(left:5.0, right:5.0),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(data[6].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[7].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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
                            backgroundColor: NtmColor,//Colors.purple[300],
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
                                      image: NetworkImage(data[8].Images.elementAt(0)),                                      fit: BoxFit.fitWidth,
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
                                style: const TextStyle(
                                  color: Colors.yellow,
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