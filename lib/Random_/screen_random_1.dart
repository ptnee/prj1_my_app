import 'package:flutter/material.dart';
// import 'package:my_app/user_/screen_2.dart';
import 'package:my_app/Random_/screen_random.dart';

class Screen_random_1 extends StatefulWidget{
  @override
  Screen_random_1_State createState() => Screen_random_1_State();
}

class Screen_random_1_State extends State<Screen_random_1> {
  static String tag = 'Random-page';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color spColor = Color(0xffbf308d);
  final Color TextColor = Color(0xfff2aec7);
  final Color highlightsColor = Color(0xfff28dcf);
  final Color foregroundColor = Colors.white;
  TextEditingController aController = TextEditingController();
  //late List<String> a;
  var a = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text(''),
        backgroundColor: highlightsColor,
      ),
      body: Container(
        /*decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.centerLeft,
            end: new Alignment(1.0, 0.0),
            // 10% of the width, so there are ten blinds.
            colors: [this.backgroundColor1, this.backgroundColor2],
            // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),*/
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0, bottom: 50.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              constraints: const BoxConstraints(
                maxHeight: 100,
                maxWidth: 380,
              ),
              //padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.only(left:3.0, right: 3.0),
                    backgroundColor: highlightColor,
                    elevation: 10,
                    minimumSize: Size( 300,100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return SpinRandom();
                  },
                    settings: RouteSettings(
                      arguments: a,
                    ),
                  ));
                  setState(() {
                    a=[];
                  });
                },
                child: const Text(
                  "Random",
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
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
              padding: const EdgeInsets.only( bottom: 18.0),

              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: new Alignment(1.0, 0.0),
                  // 10% of the width, so there are ten blinds.
                  colors: [this.highlightColor, this.highlightColor],
                  // whitish to gray
                  tileMode: TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 10.0,top: 18.0, bottom: 18),
                    child: Text(
                        "Nhập các thứ bạn đang phân vân!",
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0, top:30, bottom:10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: this.foregroundColor,
                            width: 0.5,
                            style: BorderStyle.solid),
                      ),
                    ),
                    padding: const EdgeInsets.only(left:10.0, right: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            controller: aController,
                            textAlign: TextAlign.center,
                            style: new TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nhập ở đây',
                              hintStyle: TextStyle(color: this.foregroundColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //padding: const EdgeInsets.only(left:3.0, right: 3.0),
                        backgroundColor: spColor,//Colors.purple[300],
                        elevation: 10,
                        minimumSize: Size( 100,50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        )
                    ),
                    onPressed: (){
                      String b=aController.text;
                      if (aController.text!='') {
                        a.add(b);
                      }
                      //a[i]=b;
                      //i=i+1;
                      // print(a);
                    },
                    child: const Text(
                      "SPIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                        wordSpacing: 0,
                      ),
                    ),
                  ),
                  /*
                  new Container(
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.purple[300],
                    ),
                    child: Text(
                      "SPIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                        wordSpacing: 0,
                      ),
                    ),
                  ),*/
                ],),),
          ],
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  void OnSignIn(){
    setState((){
      /*if (NamesInV != true && PassInV != true )
       Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_3_2()));*/
    });
  }
}