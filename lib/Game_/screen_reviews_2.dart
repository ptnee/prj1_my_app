import 'package:flutter/material.dart';
import 'package:my_app/Game_/screen_review_game.dart';
import 'package:my_app/firebase/test_data.dart';
class Screen_reviews_2 extends StatelessWidget {

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color foregroundColor = Colors.white;
  final Color highlightsColor = Color(0xffc88bd9);
  final Color textColor = Color(0xff7c8c03);
  final Color borColor = Color(0xffd97904);
  final Color bortrColor = Color(0xffe7ded8);

/*
  Set Images = Data_Game().ImagesData;
  Set Names =Data_Game().NameData;
  Set Review =Data_Game().ReviewData;
  Set Link =Data_Game().LinkData;
  int a=0;
 */



  var Data = Data_Game().Data_game;



  /*ListView.separated(
        itemCount: Names.length,
        itemBuilder: (context, index) {
          return Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                      padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                        border: Border.all( color: Colors.black, width: 1),
                        //color: Colors.yellow,
                      ),
                      width: 150,
                      height: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0),
                              primary: Colors.white70,
                              elevation: 10,
                              minimumSize: Size(0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              )
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return Screen_review_game();
                            }));
                          },
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(Images.elementAt(index)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(18.0),
                                  ),
                                ),
                              ),
                              Text(
                                Names.elementAt (index) ,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  overflow: TextOverflow.clip,
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              )
                            ],
                          )
                      ),),
                  ],
                ),




              ]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10)
      )*/

  /*body: new ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[





          Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                      padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                        border: Border.all( color: Colors.black, width: 1),
                        //color: Colors.yellow,
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0),
                              primary: Colors.white70,
                              elevation: 10,
                              minimumSize: Size(0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              )
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return Screen_review_game();
                            }));
                          },
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(Images.elementAt(0)),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(18.0),
                                  ),
                                ),
                              ),
                              Text(
                                Names.elementAt (0) ,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                ),
                              )
                            ],
                          )
                      ),),
                  ],
                ),




              ]),



        ],
      )*/

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
        child: Column(
          children: <Widget>[
            Expanded(
              child:Container(
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 30.0 ),
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
                            return Screen_review_game();
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
                                'tên game',
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
                            return Screen_review_game();
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
                                'tên game',
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
                            return Screen_review_game();
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
                                'tên game',
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
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 30.0 ),
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
                            return Screen_review_game();
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
                                'tên game',
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
                            return Screen_review_game();
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
                                'tên game',
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
                            return Screen_review_game();
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
                                'tên game',
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
                margin: const EdgeInsets.only(left:0.0, right:0.0, top: 30.0 ),
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
                            return Screen_review_game();
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
                                'tên game',
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
                            return Screen_review_game();
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
                                'tên game',
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
                            return Screen_review_game();
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
                                'tên game',
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
      ),*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text('Chọn game thôi'),
          backgroundColor: highlightsColor,

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
      body:GridView.builder(
        //itemCount: Names.length,
        itemCount: Data.length,
        padding: const EdgeInsets.all(4.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 10.0,
            mainAxisExtent: 200.0,
        ),
        itemBuilder: (BuildContext context, int index){
          return Container(
            margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
            padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(18.0),
              ),
              border: Border.all( color: borColor, width: 2),
              //color: Colors.yellow,
            ),
            width: 150,
            height: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0),
                    backgroundColor: bortrColor,//Colors.white70,
                    elevation: 10,
                    minimumSize: Size(0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return Screen_review_game();
                        },
                        settings: RouteSettings(
                          arguments: index,
                        ),
                      )
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
                      padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            //image: NetworkImage(Images.elementAt(index)),
                            image: NetworkImage(Data[index].Images),
                            fit: BoxFit.fitWidth,
                            filterQuality: FilterQuality.high),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                    ),
                    Text(
                      //Names.elementAt (index) ,
                      Data[index].Names,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        overflow: TextOverflow.clip,
                        color: textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                        wordSpacing: 0,
                      ),
                    )
                  ],
                )
            ),);
        },
      )
    );
  }
}



class CustomSearch extends SearchDelegate{
  Set a=Data().allData;
  //Set a = Data_Game().NameData;
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