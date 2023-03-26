// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
// import 'package:my_app/Random_/screen_random.dart';
import 'package:my_app/Random_/screen_random_1.dart';
import 'package:my_app/Savoury_/screen_reviews.dart';
import 'package:my_app/Destination_/screen_reviews_1.dart';
import 'package:my_app/Game_/screen_reviews_2.dart';
import 'package:my_app/Timeline_/screen_timeline.dart';
import 'package:my_app/ggmap_/google_search_places_api_cmr.dart';
// ignore: camel_case_types
class Screen_3_2 extends StatelessWidget {

  final Color backgroundColor1 = const Color(0xFF4aa0d5);
  final Color backgroundColor2 = const Color(0xFF4aa0d5);
  final Color AppbarColor = const Color(0xffbf308d);
  final Color ImgColor = const Color(0xFFD94389);
  final Color NbColor = const Color(0xffd94389);
  final Color NbtColor = const Color(0xfff28dcf);
  final Color TextColor = const Color(0xfff2aec7);
  final Color highslightColor = const Color(0xfff2c2c6);//bg
  final Color foregroundColor = Colors.white;

  const Screen_3_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text(''),
          backgroundColor: AppbarColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: const Alignment(1.0, 0.0),
            // 10% of the width, so there are ten blinds.
            //colors: [this.backgroundColor1, this.backgroundColor2],
            colors: [highslightColor, highslightColor],
            // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            /*Container(
              padding: const EdgeInsets.only(left:0.0, right:0.0, top: 150.0, bottom: 90.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.high),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.red,
              ),
            ),*/
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(left:3.0, right: 3.0),
                  backgroundColor: ImgColor,//Colors.deepPurple,
                  shadowColor : Colors.deepPurpleAccent,
                  elevation: 10,
                  minimumSize: const Size( 10,50),
                  /*shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )

                   */
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContextreviewst){
                  //return Screen_reviews();
                  return const GoogleSearchPlacesApi();
                }));
              },
              child: SizedBox(
                height: 235.0,
                width: 400.0,
                child: Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 48.0,
                    child: Image.asset('images/ggm.png'),
                  ),
                ),
              ),
              /*child: Container(
                padding: const EdgeInsets.only(left:0.0, right:0.0, top: 150.0, bottom: 90.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                      fit: BoxFit.fitWidth,
                      filterQuality: FilterQuality.high),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.red,
                ),
              ),*/
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              constraints: const BoxConstraints(
                maxHeight: 65,
                maxWidth: 380,
              ),
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left:3.0, right: 3.0), backgroundColor: NbColor,//Colors.deepPurpleAccent[100],
                    shadowColor : Colors.deepPurpleAccent,
                    elevation: 10,
                    minimumSize: const Size( 10,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContextreviewst){
                    return Screen_reviews();
                  }));
                },
                child: Text(
                  "Hôm nay ăn gì nhỉ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TextColor,//Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              constraints: const BoxConstraints(
                maxHeight: 65,
                maxWidth: 380,
              ),
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left:3.0, right: 3.0),
                    backgroundColor: NbColor,//Colors.deepPurpleAccent[100],
                    shadowColor : Colors.deepPurpleAccent,
                    elevation: 10,
                    minimumSize: const Size( 10,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return Screen_reviews_1();
                  }));
                },
                child: Text(
                  "Đi chơi ở đâu đây?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TextColor,//Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              constraints: const BoxConstraints(
                maxHeight: 65,
                maxWidth: 380,
              ),
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left:3.0, right: 3.0),
                    backgroundColor: NbColor,//Colors.deepPurpleAccent[100],
                    shadowColor : Colors.deepPurpleAccent,
                    elevation: 10,
                    minimumSize: const Size( 10,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return Screen_reviews_2();
                  }));
                },
                child: Text(
                  "Bạn cần các game building?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TextColor,//Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
              child: Row(
                children: <Widget>[
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 230,
                      maxWidth: 180,
                    ),
                    margin: const EdgeInsets.only(top: 18.0, bottom: 18),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NbtColor,//Colors.deepPurpleAccent[100],
                          shadowColor : Colors.deepPurpleAccent,
                          elevation: 10,
                          minimumSize: const Size( 10,190),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_timeline();
                        }));
                      },
                      child: const Text(
                          "Tạo timeline đi chơi thôi!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 230,
                      maxWidth: 180,
                    ),
                    margin: const EdgeInsets.only(left: 10.0, top: 18.0, bottom: 18),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NbtColor,//Colors.deepPurpleAccent[100],
                          shadowColor : Colors.deepPurpleAccent,
                          elevation: 10,
                          minimumSize: const Size( 50,190),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_random_1();
                        }));
                      },
                      child: const Text(
                        "Random thôi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                            wordSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                ],),),
          ],
        ),
      ),
    );
  }
}