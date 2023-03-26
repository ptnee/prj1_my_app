import 'package:flutter/material.dart';
// import 'package:my_app/user_/screen_2.dart';
// import 'package:my_app/Random_/screen_random.dart';
// import 'package:my_app/Random_/screen_random_1.dart';
import 'package:my_app/firebase/test_data.dart';
// ignore: camel_case_types
class Screen_3_3 extends StatelessWidget {
  static String tag = '   ';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color highslightColor = Color(0xfff192ea);
  final Color highlightsColor = Color(0xffc88bd9);
  final Color foregroundColor = Colors.white;

  TextEditingController commandController = TextEditingController();

  var Data = Data_Savoury().Data_Savoury_00;

  Screen_3_3({super.key});

  @override
  Widget build(BuildContext context) {
    // final i = ModalRoute.of(context)!.settings.arguments as int;
    return new Scaffold(
      appBar:AppBar(
          title:Text('mô tả chi tiết'),
        backgroundColor: highlightsColor,
      ),
      body: new Container(
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
            new Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
              alignment: Alignment.center,
              height: 300.0,
              width: 400.0,
              padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
                      padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                            fit: BoxFit.fitWidth,
                            filterQuality: FilterQuality.high),
                        //border: Border.all( color: Colors.black, width: 1),
                        color: Colors.yellow,
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
            new Container(
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
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Text(
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
            new Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                border: Border.all( color: Colors.purple, width: 1),
                color: Colors.purpleAccent[100],
              ),
              child: TextField(
                controller: commandController,
                textAlign: TextAlign.center,
                style: new TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Bình luận',
                  hintText: 'Nhập bình luận',
                  hintStyle: TextStyle(color: this.foregroundColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}