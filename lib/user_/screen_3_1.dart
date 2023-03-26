
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// import 'package:my_app/firebase/loading.dart';
import 'package:my_app/screen_/screen_3_2.dart';

import '../firebase/auth_bloc.dart';
import '../firebase/msg.dart';

class Screen_3_1 extends StatefulWidget {
  const Screen_3_1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Screen_3_1_State createState() => _Screen_3_1_State();
}

class _Screen_3_1_State extends State<Screen_3_1> {
  AuthBloc authBloc = new AuthBloc();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 140,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                child: Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 48.0,
                    child: Image.asset('images/SignUp.png'),
                  ),
                ),
              ),
              //Image.asset('images/SignUp.png'),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  "Chào mừng bạn!",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              const Text(
                "Đăng kí tài khoản với một vài bước",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: StreamBuilder(
                    stream: authBloc.nameStream,
                    builder: (context, snapshot) =>
                        TextField(
                          controller: _nameController,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                              errorText: snapshot.hasError ? snapshot.error
                                  .toString() : null,
                              labelText: "Họ và Tên",
                              prefixIcon: Container(
                                  width: 50, child: Image.asset(
                                  "images/ic_user.png")),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCED0D2), width: 1),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6)))),
                        )),
              ),
              StreamBuilder(
                  stream: authBloc.phoneStream,
                  builder: (context, snapshot) =>
                      TextField(
                        controller: _phoneController,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        decoration: InputDecoration(
                            labelText: "Số điẹn thoại",
                            errorText: snapshot.hasError ? snapshot.error
                                .toString() : null,
                            prefixIcon: Container(
                                width: 50,
                                child: Image.asset("images/ic_phone.png")),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCED0D2), width: 1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                      )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: StreamBuilder(
                    stream: authBloc.emailStream,
                    builder: (context, snapshot) =>
                        TextField(
                          controller: _emailController,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          decoration: InputDecoration(
                              labelText: "Email đăng nhập",
                              errorText: snapshot.hasError ? snapshot.error
                                  .toString() : null,
                              prefixIcon: Container(
                                  width: 50, child: Image.asset(
                                  "images/ic_mail.png")),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCED0D2), width: 1),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6)))),
                        )),
              ),
              StreamBuilder(
                  stream: authBloc.passStream,
                  builder: (context, snapshot) =>
                      TextField(
                        controller: _passController,
                        obscureText: true,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        decoration: InputDecoration(
                            errorText: snapshot.hasError ? snapshot.error
                                .toString() : null,
                            labelText: "Mật khâu",
                            prefixIcon: Container(
                                width: 50,
                                child: Image.asset("images/ic_lock.png")),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCED0D2), width: 1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                      )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                      onPressed: _onSignUpClicked,
                      child: const Text(
                        "Đăng kí",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3277D8),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      )
                  ),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Already a User? ",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Login now",
                            style: TextStyle(
                                color: Color(0xff3277D8), fontSize: 16))
                      ]),
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }

  void _onSignUpClicked() {
    /*
    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
        _passController.text, _phoneController.text);
     */
    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
        _passController.text, _phoneController.text);
    if (isValid) {
      // create user
      //loading dialog
      //LoadingDialog.showLoadingDialog(context, 'Loading...');
      authBloc.signUp(_emailController.text, _passController.text,
          _phoneController.text, _nameController.text, () {
            //LoadingDialog.hideLoadingDialog(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen_3_2()));
            /*Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return Screen_3_2();
            }));
             */
          }, (msg) {
            //LoadingDialog.hideLoadingDialog(context);
            MsgDialog.showMsgDialog(context, "Đăng kí", msg);
            // show msg dialog
          });
    }
  }
}
/*import 'package:flutter/material.dart';
import 'package:my_app/firebase/auth_bloc.dart';
import 'package:my_app/screen_3_2.dart';

class Screen_3_1 extends StatelessWidget {
  static String tag = 'SignUp-page';

  AuthBloc authBloc = new AuthBloc();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _repassController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color foregroundColor = Colors.white;

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
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
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0,top:50,bottom:10.0),
              //padding: const EdgeInsets.only(top: 90.0, bottom: 90.0),
              child: Center(
                child: new Column(
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      child: new Hero(
                        tag: 'hero',
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 48.0,
                          child: Image.asset('images/SignUp.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),),
          Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0,top:10,bottom:10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Expanded(
                    child: TextField(
                      controller: _nameController,
                      textAlign: TextAlign.center,
                      style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Họ và tên',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),
            Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0,top:10,bottom:10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Expanded(
                    child: TextField(
                      controller: _emailController,
                      textAlign: TextAlign.center,
                      style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email đăng nhập',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),
            Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding:
                    EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                    child: Icon(
                      Icons.lock_open,
                      color: this.foregroundColor,
                    ),
                  ),
                  new Expanded(
                    child: TextField(
                      controller: _passController,
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mật Khẩu',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),
            Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding:
                    EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                    child: Icon(
                      Icons.lock_open,
                      color: this.foregroundColor,
                    ),
                  ),
                  new Expanded(
                    child: TextField(
                      controller: _repassController,
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Nhập mật khẩu',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),
            /*Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Giới tính',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),*/
            Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Expanded(
                    child: TextField(
                      controller: _phoneController,
                      textAlign: TextAlign.center,
                      style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Số điện thoại',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),
            /*Expanded(
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: this.foregroundColor,
                      width: 0.5,
                      style: BorderStyle.solid),
                ),
              ),
              //padding: const EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: this.foregroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),),*/
            Expanded(
              flex:2,
              child:Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 18.0, bottom: 18),
              child: new Row(
                children: <Widget>[
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



                        var isValid = authBloc.isValid(_nameController.text, _emailController.text,
                            _passController.text, _phoneController.text);
                        if (isValid) {
                          // create user
                          // loading dialog
                          LoadingDialog.showLoadingDialog(context, 'Loading...');
                          authBloc.signUp(_emailController.text, _passController.text,
                              _phoneController.text, _nameController.text, () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => HomePage()));
                              }, (msg) {

                                MsgDialog.showMsgDialog(context, "Sign-In", msg);
                                // show msg dialog
                              });
                        }



                        /*Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return Screen_3_2();
                        }));*/
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                ],),),),
          ],
        ),
      ),
    );
  }
}*/
