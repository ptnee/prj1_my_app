import 'package:flutter/material.dart';
import 'package:my_app/firebase/test_data.dart';
// import 'package:http/http.dart' as http;
import 'package:firebase_database/firebase_database.dart';

// import 'dart:convert';


class Screen_3_3 extends StatefulWidget {
  @override
  Screen_3_3_state createState() => Screen_3_3_state();
}

class Screen_3_3_state extends State<Screen_3_3> {
  late Future data;
  final regexp = RegExp(r'{.*}');

  Future fetchAlbum() async {
    var ref = FirebaseDatabase.instance.ref();
    var x = await ref.child("users/9KIicE855YMfy8F6mUf3FWJFxL82").get();

    print(x.value);

    return x.value;
  }

  @override
  void initState() {
    super.initState();
    data = fetchAlbum();
    print("ccc");
    print(data);
  }

  static String tag = '   ';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  // final Color highslightColor = Color(0xfff192ea);
  final Color highslightColor = Color(0xfff2c2c6);
  // final Color highlightsColor = Color(0xffc88bd9);
  final Color highlightsColor = Color(0xffd94389);
  final Color TextColor = Color(0xffbf308d);
  final Color NbColor = Color(0xfff28dcf);
  final Color foregroundColor = Colors.white;

  TextEditingController commandController = TextEditingController();

  var Data = Data_Destination().Data_Destination_00;
  //var data = Data_Destination().Data_Destination_00;
  @override
  Widget build(BuildContext context) {
    final i = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar:AppBar(
        title:Text(Data[i].Names),
        backgroundColor: highlightsColor,
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
        child:
        Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
              alignment: Alignment.center,
              height: 300.0,
              width: 400.0,
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: ListView.builder(
                itemCount: Data[i].Images.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
                    padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                    height: 300.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(Data[i].Images.elementAt(index)),
                          //image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                          fit: BoxFit.fitWidth,
                          filterQuality: FilterQuality.high),
                      //border: Border.all( color: Colors.black, width: 1),
                      color: highslightColor,
                      //color: Colors.yellow,
                    ),
                  );
                },
              ),
              /*
              child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Column(
                      children: <Widget>[


                        Container(
                            margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
                            padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(18.0),
                              ),
                              //border: Border.all( color: Colors.black, width: 1),
                              //color: Colors.yellow,
                            ),

                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                                  primary: Colors.white70,
                                  elevation: 10,
                                  minimumSize: Size(0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  )
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                  return Screen_3_3();
                                }));
                              },
                              child:
                              Container(
                                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0 ),
                                padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(18.0),
                                  ),
                                  border: Border.all( color: Colors.purple, width: 1),
                                  image: DecorationImage(
                                      image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  //color: Colors.yellow,
                                ),

                              ),
                            )
                        ),




                        Container(
                            margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
                            padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(18.0),
                              ),
                              //border: Border.all( color: Colors.black, width: 1),
                              //color: Colors.yellow,
                            ),

                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                                  primary: Colors.white70,
                                  elevation: 10,
                                  minimumSize: Size(0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  )
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                  return Screen_3_3();
                                }));
                              },
                              child:
                              Container(
                                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0 ),
                                padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(18.0),
                                  ),
                                  border: Border.all( color: Colors.purple, width: 1),
                                  image: DecorationImage(
                                      image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  //color: Colors.yellow,
                                ),

                              ),
                            )
                        ),





                        Container(
                          margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
                          padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(18.0),
                            ),
                            //border: Border.all( color: Colors.black, width: 1),
                            //color: Colors.yellow,
                          ),

                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                                  primary: Colors.white70,
                                  elevation: 10,
                                  minimumSize: Size(0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  )
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                  return Screen_3_3();
                                }));
                              },
                              child:
                                  Container(
                                    margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0 ),
                                    padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(18.0),
                                      ),
                                      border: Border.all( color: Colors.purple, width: 1),
                                      image: DecorationImage(
                                          image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                          fit: BoxFit.fitWidth,
                                          filterQuality: FilterQuality.high),
                                      //color: Colors.yellow,
                                    ),

                                  ),
                              )
                          ),

                      ],
                    ),
                    /*Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 48.0,
                          child: Image.asset('images/diet.png'),
                        ),
                    ),

                     */

                  ]
              ),
               */
              /*child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left:0.0, right:10.0),
                    padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                          fit: BoxFit.fitWidth,
                          filterQuality: FilterQuality.high),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all( color: Colors.purple, width: 1),
                      color: highslightColor,
                    ),
                  ),
                ],
              ),

               */
            ),
            Container(
              //width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
              alignment: Alignment.center,
              height: 250.0,
              width: 400.0,
              /*
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              constraints: BoxConstraints(
                maxHeight: 65,
                maxWidth: 380,
              ),

               */
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              /*child: const Text(
                "các bình luận ở đây",
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
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Text(
                    //"các bình luận ở đây",
                    Data[0].Review,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:TextColor,// Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      wordSpacing: 0,
                    ),
                  );
                },
              ),
              /*

              child: ListView(
                  children: <Widget>[
                    Text(
                      //Review.elementAt (i),
                      "các bình luận ở đây",
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
               */
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                border: Border.all( color: Colors.purple, width: 1),
                color: NbColor,//Colors.purpleAccent[100],
              ),
              child: TextField(
                controller: commandController,
                textAlign: TextAlign.left,
                style: new TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Bình luận',
                  hintText: 'Nhập bình luận',
                  hintStyle: TextStyle(color: this.foregroundColor),
                ),
              ),
            )
          ],
        ),
        /*child: FutureBuilder(
          future: FirebaseDatabase.instance.ref().child("users/9KIicE855YMfy8F6mUf3FWJFxL82").get(),
          builder: (context,AsyncSnapshot<DataSnapshot> snapshot) {
            print("zzz");
            var data = snapshot;
            // var match = regexp.firstMatch(snapshot.toString())?.group(0);
            // final parsedJson = jsonDecode(match.toString());

            var x = snapshot.data?.value;
            print(x.toString());
           return Text("aaaa");

          },

        )*/
        

      ),
    );
  }
}
/*
IconButton (
                icon: Image.network("https://raw.githubusercontent.com/o7planning/rs/master/flutter/feel_good_24.png"),
                onPressed: () {
                  print("Pressed");
                },
                iconSize: 96
            )
 */