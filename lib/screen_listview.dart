import 'package:flutter/material.dart';
import 'package:my_app/user_/screen_2.dart';
import 'package:my_app/screen_/screen_3_3.dart';
import 'package:my_app/Random_/screen_random.dart';
import 'package:my_app/Random_/screen_random_1.dart';
class Screen_listview extends StatelessWidget {
  static String tag = 'SignUp-page';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xffc88bd9);
  final Color textColor = Color(0xff7c8c03);
  final Color borColor = Color(0xffd97904);
  final Color foregroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Test Listview'),
          backgroundColor: highlightColor,
        ),
        body: new ListView(
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
                                return Screen_3_3();
                              }));
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
                                  padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                        fit: BoxFit.fitWidth,
                                        filterQuality: FilterQuality.high),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(18.0),
                                    ),
                                  ),
                                ),
                                Text(
                                  'tên món',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: textColor,
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
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
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
                                  return Screen_3_3();
                                }));
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
                                    padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                          fit: BoxFit.fitWidth,
                                          filterQuality: FilterQuality.high),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'tên món',
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
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
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
                                  return Screen_3_3();
                                }));
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
                                    padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                          fit: BoxFit.fitWidth,
                                          filterQuality: FilterQuality.high),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'tên món',
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
        )
    );
  }
}

/*





Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                            padding: const EdgeInsets.only(left:0.0, right:0.0, top: 18.0, bottom: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              color: Colors.yellow,
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  //margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                                  padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                        fit: BoxFit.fitWidth,
                                        filterQuality: FilterQuality.high),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                ),
                                Text(
                                  'tên món',
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
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                            padding: const EdgeInsets.only(left:0.0, right:0.0, top: 18.0, bottom: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              color: Colors.yellow,
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  //margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                                  padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                        fit: BoxFit.fitWidth,
                                        filterQuality: FilterQuality.high),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                ),
                                Text(
                                  'tên món',
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
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:0.0, right:0.0, top: 18.0, bottom: 18.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                //margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                                padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                              Text(
                                'tên món',
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
                        ),
                      ],
                    ),
                  ]),









Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          'tên món',
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
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          'tên món',
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
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          'tên món',
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
                    ),
                  ]),
              Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          'tên món',
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
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          'tên món',
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
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left:3.0, right:0.0, top: 15.0, bottom: 15.0 ),
                          padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          'tên món',
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
                    ),
                  ]),





Container(
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
              ),



Column(
                  children: <Widget> [
                    Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                        padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                              fit: BoxFit.fitWidth,
                              filterQuality: FilterQuality.high),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                        padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                              fit: BoxFit.fitWidth,
                              filterQuality: FilterQuality.high),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
                        padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://media.vov.vn/sites/default/files/styles/large/public/2022-10/d066690f926b55350c7a.jpg'),
                              fit: BoxFit.fitWidth,
                              filterQuality: FilterQuality.high),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          color: Colors.yellow,
                        ),
                      ),
                      Text(
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
                      )
                    ]),
                    ]
                ),
*/