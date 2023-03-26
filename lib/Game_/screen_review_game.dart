import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// import 'package:my_app/user_/screen_2.dart';
// import 'package:my_app/Random_/screen_random.dart';
// import 'package:my_app/Random_/screen_random_1.dart';
// import 'package:my_app/Game_/screen_reviews_2.dart';
import 'package:my_app/firebase/test_data.dart';

class Screen_review_game extends StatefulWidget {
  @override
  Screen_review_game_state createState() => Screen_review_game_state();
}
class Screen_review_game_state extends State<Screen_review_game> {

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color foregroundColor = Colors.white;
/*
  Set Images = Data_Game().ImagesData;
  Set Names =Data_Game().NameData;
  Set Review =Data_Game().ReviewData;
  Set Link =Data_Game().LinkData;

 */
  //int i= Screen_reviews_2().a;
  var Data = Data_Game().Data_game;

  @override
  Widget build(BuildContext context) {
    final i = ModalRoute.of(context)!.settings.arguments as int;
    Future fetchAlbum() async {
      var ref = FirebaseDatabase.instance.ref();
      var x = await ref.child("Data_game/0",).get();

      print('pppppp');
      print(x.value);

      return x.value;
    }
/*
    @override
    void initState() {
      super.initState();
      var data = fetchAlbum();
      print(data);
    }*/
    var data = fetchAlbum();
    print('tttt');
    print(data);
    print(data);
    return Scaffold(
      appBar:AppBar(
          //title:Text(Names.elementAt (i))
          title:Text(Data[i].Names)
          //title:Text(data[name])
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: new Alignment(1.0, 0.0),
            // 10% of the width, so there are ten blinds.
            colors: [this.backgroundColor1, this.backgroundColor2],
            // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left:30.0, right:30.0, top: 30.0, bottom: 30.0),
              padding: const EdgeInsets.only(left:0.0, right:0.0, top: 100.0, bottom: 100.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    //image: NetworkImage(Images.elementAt(i)),
                    image: NetworkImage(Data[i].Images),
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.high),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.yellow,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxHeight:300,
                maxWidth: 380,
              ),
              padding: const EdgeInsets.only(left:10.0, right: 10.0,top: 50, bottom:50),
              child: ListView(
                children: <Widget>[
                  Text(
                    //Review.elementAt (i),
                    Data[i].Review,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      wordSpacing: 0,
                    ),
                  ),
                ]
              ),
              /*child: Text(
                Review.elementAt (0),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  wordSpacing: 0,
                ),
              ),*/
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              constraints: const BoxConstraints(
                maxHeight: 65,
                maxWidth: 380,
              ),
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: Text(
                //Link.elementAt (i),
                Data[i].Link,
                textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}