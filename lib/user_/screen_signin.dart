//import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:my_app/firebase/msg.dart';
import 'package:my_app/user_/screen_3_1.dart';
import 'package:my_app/screen_/screen_3_2.dart';

import '../firebase/loading.dart';
import '../main.dart';

// ignore: camel_case_types
class Screen_SignIn extends StatefulWidget{
  const Screen_SignIn({super.key});

  @override
  Screen_2_State createState() => Screen_2_State();
}

// ignore: camel_case_types
class Screen_2_State extends State<Screen_SignIn> {
  static String tag = 'login-page';

  //final Color backgroundColor1 = Color(0xFF4aa0d5);
  //final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color backgroundColor1 = const Color(0xff67b6e7);
  final Color backgroundColor2 = const Color(0xffcb6fc3);
  final Color highlightColor = const Color(0xfff65aa3);
  // ignore: non_constant_identifier_names
  final Color TextColor = const Color(0xffc0598b);
  final Color foregroundColor = Colors.white;


  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // ignore: non_constant_identifier_names
  var NamesErr = 'Tài khoản không hợp lệ';
  // ignore: non_constant_identifier_names
  var PassErr = 'Mật khẩu không hợp lệ';
  // ignore: non_constant_identifier_names
  var NamesInV = false;
  // ignore: non_constant_identifier_names
  var PassInV = false;

  @override
  Widget build(BuildContext context) {
    //final a = ModalRoute.of(context)!.settings.arguments as a;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: const Alignment(1.0, 0.0),
            // 10% of the width, so there are ten blinds.
            colors: [backgroundColor1, backgroundColor2],
            // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 180.0, bottom: 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Hero(
                        tag: 'hero',
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 48.0,
                          child: Image.asset('images/diet.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 20.0, bottom: 10.0, right: 00.0),
                    child: Icon(
                      Icons.alternate_email,
                      color: foregroundColor,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        errorText: NamesInV? NamesErr: null,
                        border: InputBorder.none,
                        hintText: 'Enter User Name...',
                        hintStyle: TextStyle(color: foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                    child: Icon(
                      Icons.lock_open,
                      color: foregroundColor,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        //errorText: PassErr,
                        errorText: PassInV? PassErr: null,
                        border: InputBorder.none,
                        hintText: 'Enter your password...',
                        hintStyle: TextStyle(color: foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 18.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: TextColor,//Colors.purple,
                          shadowColor : TextColor,//Colors.redAccent,
                          elevation: 10,
                          minimumSize: const Size( 100,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      ),



                      /*{
                      if ((nameController !='') & (passwordController !='' ))
                                print('nhap chua dung');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
                                    content: Text(
                                      'nhap chua ddung',
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
                                );
                            };*/
                      /*onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_2();
                        }));
                      },*/
                      onPressed: _onLoginClick,
                      child: const Text("Sign In"),
                    ),
                  ),

                ],),),
            /*new Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 18.0),
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            shadowColor : Colors.redAccent,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_two();
                          }));
                        },
                        child: const Text("Forgot your password?")
                    ),
                  ),
                ],),),*/
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 18.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: TextColor,//Colors.purple,
                            shadowColor : TextColor,//Colors.redAccent,
                            elevation: 10,
                            minimumSize: const Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_1();
                          }));
                        },
                        child: const Text("Don't have an account? Sign Up")
                    ),
                  ),
                ],),),
            /*
             Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    shadowColor : Colors.redAccent,
                    elevation: 10,
                    minimumSize: Size( 100,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return Screen_two();
                  }));
                },
                child: const Text("Sign In"),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                    minimumSize: Size( 100, 50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return Screen_two();
                  }));
                },
                child: const Text("Forgot your password?")
            ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                    minimumSize: Size( 100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return Screen_two();
                  }));
                },
                child: const Text("Don't have an account? Sign Up")
            ),
            ),
             */
            /*new Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
              alignment: Alignment.center,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                        primary: Colors.yellow,
                        ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: this.foregroundColor)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_two();
                        }));
                      },)
                    ),
                ],
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              alignment: Alignment.center,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                        primary: Colors.transparent,
                      ),
                      onPressed: () => {},
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 10.0, bottom: 20.0),
              alignment: Alignment.center,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                        primary: Colors.transparent
                      ),
                      onPressed: () => {},
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
  void _onLoginClick() {
    String email = nameController.text;
    String pass = passwordController.text;
    setState((){
      if (nameController.text.length < 6) {
        NamesInV = true;
      } else {
        NamesInV = false;
      }
      if(passwordController.text.length < 6 ) {
        PassInV = true;
      } else {
        PassInV = false;
      }
      if ((NamesInV != true) && (PassInV != true)) {
        // TODO
      }
    });
    var authBloc = MyApp.of(context)?.authBloc;
    //LoadingDialog.showLoadingDialog(context, "Loading...");
    authBloc?.signIn(email, pass, () {
      LoadingDialog.hideLoadingDialog(context);
      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_3_2()));
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
        return Screen_3_2();
      }));
    }, (msg) {
      //LoadingDialog.hideLoadingDialog(context); để không ra screen trước
      MsgDialog.showMsgDialog(context, "Đăng Nhập", msg);
    });
  }

  // ignore: non_constant_identifier_names
  void OnSignIn(){
    setState((){
      if (nameController.text.length < 6) {
        NamesInV = true;
      } else {
        NamesInV = false;
      }
      if(passwordController.text.length < 6 ) {
        PassInV = true;
      } else {
        PassInV = false;
      }
      if ((NamesInV != true) && (PassInV != true)) {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
          return Screen_3_2();
        }));
      }
      /*if (NamesInV != true && PassInV != true )
       Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_3_2()));*/
    });
  }
}

