import 'package:flutter/material.dart';
import 'package:my_app/Destination_/screen_ctta1.dart';
import 'package:my_app/firebase/test_data.dart';

// import '../screen_/screen_3_3.dart';
/*
FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return Text(snapshot.data);
        }
        return Container();
      },
    );
 */
class Screen_luoi1 extends StatelessWidget {

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color foregroundColor = Colors.white;
  final Color highlightsColor = Color(0xffc88bd9);
  final Color textColor = Color(0xff7c8c03);
  final Color borColor = Color(0xffd97904);
  final Color bortrColor = Color(0xffe7ded8);




  dynamic Data = Data_Destination().Data_Destination_00;
  var datas = Data_Destination().tag;


  @override
  Widget build(BuildContext context) {
    final i = ModalRoute.of(context)!.settings.arguments as int;
    if (i==0)
      Data = Data_Destination().read_rs();
    if (i==1)
      Data = Data_Destination().read_cf();
    if (i==2)
      Data = Data_Destination().read_adr();
    return FutureBuilder(
      future: Data,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          var data = snapshot.data;
          return Scaffold(
              appBar:AppBar(
                title:Text(datas[i]),
                backgroundColor: highlightsColor,
              ),
              body:GridView.builder(
                //itemCount: Names.length,
                itemCount: data.length,
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
                          List<int> a=[i,index];
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context){
                                  return Screen_ctta1();
                                },
                                settings: RouteSettings(
                                  arguments: a,
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
                                    image: NetworkImage(data[index].Images.elementAt(0)),
                                    fit: BoxFit.fitWidth,
                                    filterQuality: FilterQuality.high),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(18.0),
                                ),
                              ),
                            ),
                            Text(
                              //Names.elementAt (index) ,
                              data[index].Names.substring(0,50),
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
        return Container();
      },
    );
    //   Scaffold(
    //     appBar:AppBar(
    //       title:Text(datas[i]),
    //       backgroundColor: highlightsColor,
    //     ),
    //     body:GridView.builder(
    //       //itemCount: Names.length,
    //       itemCount: data.length,
    //       padding: const EdgeInsets.all(4.0),
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 3,
    //         crossAxisSpacing: 5.0,
    //         mainAxisSpacing: 10.0,
    //         mainAxisExtent: 200.0,
    //       ),
    //       itemBuilder: (BuildContext context, int index){
    //         return Container(
    //           margin: const EdgeInsets.only(left:0.0, right:0.0, top: 15.0, bottom: 15.0 ),
    //           padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
    //           decoration: BoxDecoration(
    //             borderRadius: const BorderRadius.all(
    //               Radius.circular(18.0),
    //             ),
    //             border: Border.all( color: borColor, width: 2),
    //             //color: Colors.yellow,
    //           ),
    //           width: 150,
    //           height: 200,
    //           child: ElevatedButton(
    //               style: ElevatedButton.styleFrom(
    //                   padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0),
    //                   primary: bortrColor,//Colors.white70,
    //                   elevation: 10,
    //                   minimumSize: Size(0, 0),
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(18),
    //                   )
    //               ),
    //               onPressed: (){
    //                 List<int> a=[i,index];
    //                 Navigator.of(context).push(
    //                     MaterialPageRoute(
    //                       builder: (BuildContext context){
    //                         return Screen_ctta1();
    //                       },
    //                       settings: RouteSettings(
    //                         arguments: a,
    //                       ),
    //                     )
    //                 );
    //               },
    //               child: Column(
    //                 children: <Widget>[
    //                   Container(
    //                     height: 100.0,
    //                     width: 100.0,
    //                     margin: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 10.0 ),
    //                     padding: const EdgeInsets.only(left:60.0, right:60.0, top: 60.0, bottom: 60.0),
    //                     decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         //image: NetworkImage(Images.elementAt(index)),
    //                           image: NetworkImage(Data[index].Images.elementAt(0)),
    //                           fit: BoxFit.fitWidth,
    //                           filterQuality: FilterQuality.high),
    //                       borderRadius: const BorderRadius.all(
    //                         Radius.circular(18.0),
    //                       ),
    //                     ),
    //                   ),
    //                   Text(
    //                     //Names.elementAt (index) ,
    //                     Data[index].Names,
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                       overflow: TextOverflow.clip,
    //                       color: textColor,
    //                       fontSize: 12,
    //                       fontWeight: FontWeight.w500,
    //                       fontStyle: FontStyle.normal,
    //                       letterSpacing: 0,
    //                       wordSpacing: 0,
    //                     ),
    //                   )
    //                 ],
    //               )
    //           ),);
    //       },
    //     )
    // );
  }
}
