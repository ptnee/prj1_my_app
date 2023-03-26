import 'package:flutter/material.dart';
import 'package:my_app/firebase/test_data.dart';
class Screen_cttag extends StatelessWidget {
  static String tag = '   ';

  final Color backgroundColor1 = Color(0xFF4aa0d5);
  final Color backgroundColor2 = Color(0xFF4aa0d5);
  final Color highlightColor = Color(0xfff65aa3);
  final Color highslightColor = Color(0xfff2c2c2);
  final Color AppbarColor = Color(0xff04b4d9);
  final Color TextColor = Color(0xffec4654);
  final Color BlColor = Color(0xfff29191);
  final Color foregroundColor = Colors.white;

  TextEditingController commandController = TextEditingController();

  // ignore: non_constant_identifier_names
  dynamic Data = Data_Savoury().Data_Savoury_00;


  @override
  Widget build(BuildContext context) {
    final j = ModalRoute.of(context)!.settings.arguments as List<int>;
    List i=j;
    int a= i[1];
    if (i[0]==0) {
      Data = Data_Savoury().read_eat();
    }
    if (i[0]==1) {
      Data = Data_Savoury().read_food();
    }
    if (i[0]==2) {
      Data = Data_Savoury().read_drink();
    }
    return FutureBuilder(
      future: Data,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          var data = snapshot.data;
          return Scaffold(
            appBar:AppBar(
              title:Text(data[a].Names),
              backgroundColor: AppbarColor,
            ),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: const Alignment(1.0, 0.0),
                  // 10% of the width, so there are ten blinds.
                  colors: [highslightColor, highslightColor],
                  // whitish to gray
                  tileMode: TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
                    alignment: Alignment.center,
                    height: 300.0,
                    width: 400.0,
                    padding: const EdgeInsets.only(left:10.0, right: 10.0),
                    child: ListView.builder(
                      itemCount: data[a].Images.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
                          padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
                          height: 300.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(18.0),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(data[a].Images.elementAt(index)),
                                //image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            //border: Border.all( color: Colors.black, width: 1),
                            color: highslightColor,
                            //color: Colors.yellow,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    //width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
                    alignment: Alignment.center,
                    height: 250.0,
                    width: 400.0,
                    padding: const EdgeInsets.only(left:10.0, right: 10.0),
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Text(
                          //"các bình luận ở đây",
                          data[a].Review,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: TextColor,//Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                            wordSpacing: 0,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all( color: Colors.purple, width: 1),
                      color: BlColor,//Colors.purpleAccent[100],
                    ),
                    child: TextField(
                      controller: commandController,
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Bình luận',
                        hintText: 'Nhập bình luận',
                        hintStyle: TextStyle(color: foregroundColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );


        }
        return Container();
      },
    );
    //   Scaffold(
    //   appBar:AppBar(
    //     title:Text(data[a].Names),
    //     backgroundColor: highlightsColor,
    //   ),
    //   body: new Container(
    //     decoration: new BoxDecoration(
    //       gradient: new LinearGradient(
    //         begin: Alignment.centerLeft,
    //         end: new Alignment(1.0, 0.0),
    //         // 10% of the width, so there are ten blinds.
    //         colors: [this.highslightColor, this.highslightColor],
    //         // whitish to gray
    //         tileMode: TileMode.repeated, // repeats the gradient over the canvas
    //       ),
    //     ),
    //     height: MediaQuery.of(context).size.height,
    //     child: Column(
    //       children: <Widget>[
    //         new Container(
    //           margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
    //           alignment: Alignment.center,
    //           height: 300.0,
    //           width: 400.0,
    //           padding: const EdgeInsets.only(left:10.0, right: 10.0),
    //           child: ListView.builder(
    //             itemCount: data[a].Images.length,
    //             itemBuilder: (context, index) {
    //               return Container(
    //                 margin: const EdgeInsets.only(left:0.0, right:0.0, top: 5.0, bottom: 0.0 ),
    //                 padding: const EdgeInsets.only(left:0.0, right:0.0, top: 0.0, bottom: 0.0),
    //                 height: 300.0,
    //                 width: 100.0,
    //                 decoration: BoxDecoration(
    //                   borderRadius: const BorderRadius.all(
    //                     Radius.circular(18.0),
    //                   ),
    //                   image: DecorationImage(
    //                       image: NetworkImage(data[a].Images.elementAt(index)),
    //                       //image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F08%2F16%2Fchopped-power-salad-with-chicken.jpg'),
    //                       fit: BoxFit.fitWidth,
    //                       filterQuality: FilterQuality.high),
    //                   //border: Border.all( color: Colors.black, width: 1),
    //                   color: highslightColor,
    //                   //color: Colors.yellow,
    //                 ),
    //               );
    //             },
    //           ),
    //         ),
    //         new Container(
    //           //width: MediaQuery.of(context).size.width,
    //           margin: const EdgeInsets.only(left: 10.0, right: 10.0,top:18.0),
    //           alignment: Alignment.center,
    //           height: 250.0,
    //           width: 400.0,
    //           padding: const EdgeInsets.only(left:10.0, right: 10.0),
    //           child: ListView.builder(
    //             itemCount: 1,
    //             itemBuilder: (context, index) {
    //               return Text(
    //                 //"các bình luận ở đây",
    //                 data[a].Review,
    //                 textAlign: TextAlign.center,
    //                 style: TextStyle(
    //                   color: Colors.yellow,
    //                   fontSize: 20,
    //                   fontWeight: FontWeight.w300,
    //                   fontStyle: FontStyle.normal,
    //                   letterSpacing: 0,
    //                   wordSpacing: 0,
    //                 ),
    //               );
    //             },
    //           ),
    //         ),
    //         new Container(
    //           margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18),
    //           padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
    //           decoration: BoxDecoration(
    //             borderRadius: const BorderRadius.all(
    //               Radius.circular(10.0),
    //             ),
    //             border: Border.all( color: Colors.purple, width: 1),
    //             color: Colors.purpleAccent[100],
    //           ),
    //           child: TextField(
    //             controller: commandController,
    //             textAlign: TextAlign.left,
    //             style: new TextStyle(color: Colors.white),
    //             decoration: InputDecoration(
    //               border: InputBorder.none,
    //               labelText: 'Bình luận',
    //               hintText: 'Nhập bình luận',
    //               hintStyle: TextStyle(color: this.foregroundColor),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}