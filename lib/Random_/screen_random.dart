import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:rxdart/rxdart.dart';

import '../screen_/screen_3_2.dart';

class SpinRandom extends StatefulWidget {
  const SpinRandom({Key? key}) : super(key: key);


  @override
  State<SpinRandom> createState() => _SpinRandomState();
}

class _SpinRandomState extends State<SpinRandom> {
  final Color highlightssColor = Color(0xfff8aed1);
  final Color highlightsColor = Color(0xfff65aa3);
  final Color highlightColor = Color(0xfff3127c);
  final selected = BehaviorSubject<int>();
  int rewards = 0;
  String reward ='';
  List<int> items = [
    100, 200, 500, 1000, 2000
  ];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final a = ModalRoute.of(context)!.settings.arguments as List;
    if (a.length < 2)
      {
        a.add('bạn');
        a.add('chưa');
        a.add('nhập');
        a.add('các');
        a.add('lựa');
        a.add('chọn');
      };
    print(a);
    return Scaffold(
      appBar:AppBar(
        title: Text('Bắt đầu thôi'),
        backgroundColor: highlightColor,
          /*
          actions: <Widget> [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return Screen_3_2();
                }));
              },
              icon: const Icon(Icons.search),
            ),
          ]
           */
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 120.0, bottom:90.0),
              height: 300,
              child: FortuneWheel(
                indicators: const <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment.topCenter,
                    child: TriangleIndicator(
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
                selected: selected.stream,
                animateFirst: false,
                items: [
                if (a.length %2==0)...<FortuneItem>{
                    for(int i = 0; i < a.length; i++)...<FortuneItem>{
                      if (i%2==0)...<FortuneItem>{
                        FortuneItem(
                            style: FortuneItemStyle(
                              color: highlightColor,
                              borderColor: highlightColor,
                              borderWidth: 1,
                            ),
                            child: Text(
                              a[i].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                                wordSpacing: 0,
                              ),
                            )
                        ),
                      },
                      if (i%2==1)...<FortuneItem>{
                        FortuneItem(
                            style: FortuneItemStyle(
                              color: highlightsColor,
                              borderColor: highlightColor,
                              borderWidth: 1,
                            ),
                            child: Text(
                              a[i].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                                wordSpacing: 0,
                              ),
                            )
                        ),
                      },
                    },
                  },
                  if (a.length %3==0 && a.length % 2==1)...<FortuneItem>{
                    for(int i = 0; i < a.length; i++)...<FortuneItem>{
                      if (i%3==0)...<FortuneItem>{
                        FortuneItem(
                            style: FortuneItemStyle(
                              color: highlightColor,
                              borderColor: highlightColor,
                              borderWidth: 1,
                            ),
                            child: Text(
                              a[i].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                                wordSpacing: 0,
                              ),
                            )
                        ),
                      },
                      if (i%3==1)...<FortuneItem>{
                        FortuneItem(
                            style: FortuneItemStyle(
                              color: highlightsColor,
                              borderColor: highlightColor,
                              borderWidth: 1,
                            ),
                            child: Text(
                              a[i].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                                wordSpacing: 0,
                              ),
                            )
                        ),
                      },
                      if (i%3==2)...<FortuneItem>{
                        FortuneItem(
                            style: FortuneItemStyle(
                              color: highlightssColor,
                              borderColor: highlightColor,
                              borderWidth: 1,
                            ),
                            child: Text(
                              a[i].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                                wordSpacing: 0,
                              ),
                            )
                        ),
                      },
                    },
                  }
                ],
                onAnimationEnd: () {
                  setState(() {
                    reward = a[selected.value];
                  });
                  // print(reward);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.purpleAccent,
                      content: Text(
                        // "You want " + reward.toString(),
                        "You want $reward",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
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
                },
              ),
            ),



            /*
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 120.0, bottom:90.0),
              height: 300,
              child: FortuneWheel(
                selected: selected.stream,
                animateFirst: false,
                items: [
                  for(int i = 0; i < items.length; i++)...<FortuneItem>{
                    FortuneItem(child: Text(items[i].toString())),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value];
                  });
                  print(rewards);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(
                        "You want " + rewards.toString(),
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
                },
              ),
            ),
            */
            GestureDetector(
              onTap: () {
                setState(() {
                  selected.add(Fortune.randomInt(0, items.length));
                });
              },
              child:Container(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.purpleAccent,
                ),
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
              /*child: Container(
                height: 50,
                width: 130,
                color: Colors.redAccent,
                child: Center(
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
                ),
              ),*/
            ),
          ],
        ),
      ),
    );
  }
}
