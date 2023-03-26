import 'package:flutter/material.dart';
import 'package:my_app/user_/screen_2.dart';
import 'package:my_app/screen_/screen_3_3.dart';
import 'package:my_app/Random_/screen_random.dart';
import 'package:my_app/Random_/screen_random_1.dart';

import 'package:my_app/firebase/test_data.dart';
class Screen_3_4 extends StatelessWidget {

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color foregroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:AppBar(
        title:Text('Tên tag'),
          actions: <Widget> [
            IconButton(
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: CustomSearch()
                );
              },
              icon: const Icon(Icons.search),
            ),
          ]
      ),
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
              child:Container(
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.yellow,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                  color: Colors.yellow,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                  color: Colors.yellow,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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
                            primary: Colors.indigo,
                            elevation: 10,
                            minimumSize: Size( 100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return Screen_3_3();
                          }));
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
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
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
                                'tên món',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
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

class CustomSearch extends SearchDelegate{
 Set a=Data().allData;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      )
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: (){
          close(context, null);
        },
      );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for ( var item in a){
      if(item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
      itemBuilder: (context,index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
      },
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for ( var item in a){
      if(item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

}