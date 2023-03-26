import 'package:flutter/material.dart';
class Screen_timeline extends StatelessWidget {
  static String tag = 'SignUp-page';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color foregroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text('Tạo time thôi'),
        backgroundColor: highlightColor,
      ),
      body: TextField(
        textAlign: TextAlign.left,
        style: new TextStyle(color:highlightColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Tạo time thôi',
          hintStyle: TextStyle(color: this.foregroundColor),
        ),

        maxLines: null,
        //autofocus: true,
      ),
      /*Container(
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
        child: TextField(
          maxLines: null,
          autofocus: true,
        ),

      ),*/
    );
  }
}