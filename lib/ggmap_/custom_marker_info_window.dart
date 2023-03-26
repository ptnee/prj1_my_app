import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:google_maps_flutter/google_maps_flutter.dart';


class CustomMarkerInfoWindowScreen extends StatefulWidget {
  const CustomMarkerInfoWindowScreen({Key? key}) : super(key: key);

  @override
  _CustomMarkerInfoWindowScreenState createState() => _CustomMarkerInfoWindowScreenState();
}

class _CustomMarkerInfoWindowScreenState extends State<CustomMarkerInfoWindowScreen> {

  CustomInfoWindowController _customInfoWindowController = CustomInfoWindowController();
  // final LatLng _latLng = LatLng(21.005077, 105.845556);
  final double _zoom = 15.0;
  Set<Marker> _markers = {};

  List<String> images = [ 'images/ggm.png' , 'images/ggm.png','images/ggm.png','images/ggm.png','images/ggm.png','images/ggm.png','images/ggm.png'];
  List<String> img=[
    'https://hust.edu.vn/uploads/sys/news/2016/09/201699-nha-an-can-bo.90473.4415.jpg',
    'https://images.foody.vn/res/g73/722334/prof/s640x400/image-b003f6f6-230111090736.jpeg',
    'https://images.foody.vn/res/g98/976204/prof/s640x400/foody-upload-api-foody-mobile-20-200824172747.jpg',
    'https://images.foody.vn/res/g5/42089/prof/s640x400/foody-upload-api-foody-mobile-nam-phuong-jpg-180621161441.jpg',
    'https://images.foody.vn/res/g75/746478/prof/s640x400/foody-upload-api-foody-mobile-20-200824172832.jpg',
    'https://images.foody.vn/res/g106/1058911/prof/s640x400/file_restaurant_photo_fpng_16087-4287071c-201224100400.jpeg'];
  List<LatLng> latl= [LatLng(21.005033, 105.846477),LatLng(21.004488, 105.847188),LatLng(21.001224, 105.845128),LatLng(21.000623,105.845385),LatLng(21.002044, 105.849251),LatLng(20.997957, 105.845819),LatLng(21.003993, 105.847278)];
  List<String> intt = [
    "my UNV",
    'Nhà ăn dành cho sinh viên trường Bách Khoa và cả những người không phải sinh viên Bách Khoa',
    """Bánh Su Kem Singapore Chewy Junior - Trần Đại Nghĩa
    64 Trần Đại Nghĩa, P. Đồng Tâm, Hai Bà Trưng, Hà Nội""",
    """Bánh Mì - Tào Phớ Vợ Ong Vàng - 141 Trần Đại Nghĩa
    141 Trần Đại Nghĩa, P. Bách Khoa, Hai Bà Trưng, Hà Nội""",
    """Nam Phương - Cơm Tấm Sài Gòn - Tạ Quang Bửu
    102 E6 Bách Khoa, Tạ Quang Bửu, Hai Bà Trưng, Hà Nội""",
    """Bánh Mì - Tào Phớ Vợ Ong Vàng - Trần Đại Nghĩa
    96 Trần Đại Nghĩa, P. Đồng Tâm, Hai Bà Trưng, Hà Nội""",
    """Pizza Dough - Pizza & Fast Food - Shop Online
    Ngách 1/13 Tạ Quang Bửu, P. Bách Khoa (Đối Diện 69 Ngõ 27 Đại Cồ Việt), Hai Bà Trưng, Hà Nội"""
  ];
  Uint8List? markerImage;

/*
https://shopeefood.vn/ha-noi/banh-su-kem-chewy-junior-tran-dai-nghia
https://shopeefood.vn/ha-noi/banh-mi-tao-pho-vo-ong-vang-141-tran-dai-nghia
https://shopeefood.vn/ha-noi/nam-phuong-com-tam-sai-gon-ta-quang-buu
https://shopeefood.vn/ha-noi/banh-mi-tao-pho-vo-ong-vang-tran-dai-nghia
https://shopeefood.vn/ha-noi/pizza-dough-pizza-fast-food-shop-online
 */

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();

  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData() ;

  }
  //Set<Marker> _markers = {};

  loadData()async{

    for(int i = 0 ; i < images.length ; i++){
      print('name'+images[i].toString()+i.toString());
      final Uint8List markerIcon = await getBytesFromAsset(images[i].toString(), 100);
      if (i==0) {
          _markers.add(Marker(
                  markerId: MarkerId(i.toString()),
                  position: latl[i],//LatLng(21.005033, 105.846477),
                  icon: BitmapDescriptor.fromBytes(markerIcon),
                  onTap: () {
                    _customInfoWindowController.addInfoWindow!(
                      Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.account_circle,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      intt[i],//"my UNV",
                                      style:
                                      Theme.of(context).textTheme.titleLarge!.copyWith(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          // Triangle.isosceles(
                          //   edge: Edge.BOTTOM,
                          //   child: Container(
                          //     color: Colors.blue,
                          //     width: 20.0,
                          //     height: 10.0,
                          //   ),
                          // ),
                        ],
                      ),
                      //LatLng(21.005033, 105.846477),
                      latl[i],
                    );
                  }
              ));
        } else {
          _markers.add(Marker(
              markerId: MarkerId(i.toString()),
              position: latl[i], //LatLng(21.004488, 105.847188),
              icon: BitmapDescriptor.fromBytes(markerIcon),
              onTap: () {
                _customInfoWindowController.addInfoWindow!(
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(img[i - 1]),
                                //'https://hust.edu.vn/uploads/sys/news/2016/09/201699-nha-an-can-bo.90473.4415.jpg'),
                                fit: BoxFit.fitWidth,
                                filterQuality: FilterQuality.high),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Text(
                            intt[i],
                            //'Nhà ăn dành cho sinh viên trường Bách Khoa và cả những người không phải sinh viên Bách Khoa',
                            maxLines: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // LatLng(21.004488, 105.847188),
                  latl[i],
                );
              }
          ));
      }

      // if(i == 1 ){
      //   _markers.add(Marker(
      //       markerId: MarkerId('2'),
      //       position: LatLng(21.005033, 105.846477),
      //       icon: BitmapDescriptor.fromBytes(markerIcon),
      //       onTap: () {
      //         _customInfoWindowController.addInfoWindow!(
      //           Column(
      //             children: [
      //               Expanded(
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                     color: Colors.blue,
      //                     borderRadius: BorderRadius.circular(4),
      //                   ),
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(8.0),
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Icon(
      //                           Icons.account_circle,
      //                           color: Colors.white,
      //                           size: 30,
      //                         ),
      //                         SizedBox(
      //                           width: 8.0,
      //                         ),
      //                         Text(
      //                           "my UNV",
      //                           style:
      //                           Theme.of(context).textTheme.headline6!.copyWith(
      //                             color: Colors.white,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   width: double.infinity,
      //                   height: double.infinity,
      //                 ),
      //               ),
      //               // Triangle.isosceles(
      //               //   edge: Edge.BOTTOM,
      //               //   child: Container(
      //               //     color: Colors.blue,
      //               //     width: 20.0,
      //               //     height: 10.0,
      //               //   ),
      //               // ),
      //             ],
      //           ),
      //           LatLng(21.005033, 105.846477),
      //         );
      //       }
      //   ));
      // }else {
      //   _markers.add( Marker(
      //       markerId: MarkerId(i.toString()),
      //       position: LatLng(21.004488, 105.847188),
      //       icon: BitmapDescriptor.fromBytes(markerIcon),
      //       onTap: () {
      //         _customInfoWindowController.addInfoWindow!(
      //           Container(
      //             width: 300,
      //             height: 200,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               border: Border.all(color: Colors.grey),
      //               borderRadius: BorderRadius.circular(10.0),
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   width: 300,
      //                   height: 100,
      //                   decoration: BoxDecoration(
      //                     image: DecorationImage(
      //                         image: NetworkImage('https://hust.edu.vn/uploads/sys/news/2016/09/201699-nha-an-can-bo.90473.4415.jpg'),
      //                         fit: BoxFit.fitWidth,
      //                         filterQuality: FilterQuality.high),
      //                     borderRadius: const BorderRadius.all(
      //                       Radius.circular(10.0),
      //                     ),
      //                     color: Colors.red,
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10),
      //                   child: Row(
      //                     children: [
      //                       SizedBox(
      //                         width: 100,
      //                         child: Text(
      //                           'Nha An Bach Khoa',
      //                           maxLines: 1,
      //                           overflow: TextOverflow.fade,
      //                           softWrap: false,
      //                         ),
      //                       ),
      //                       const Spacer(),
      //                       Text(
      //                         '.3 mi.',
      //                         // widget.data!.date!,
      //
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10),
      //                   child: Text(
      //                     'Nhà ăn dành cho sinh viên trường Bách Khoa và cả những người không phải sinh viên Bách Khoa',
      //                     maxLines: 2,
      //
      //                   ),
      //                 ),
      //
      //               ],
      //             ),
      //           ),
      //           LatLng(21.004488, 105.847188),
      //         );
      //       }
      //   ));
      // }

      // setState(() {
      //
      // });
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final i = ModalRoute.of(context)!.settings.arguments as Marker;
    // loadData() ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Các quán ăn gần bạn'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            onMapCreated: (GoogleMapController controller) async {
              _customInfoWindowController.googleMapController = controller;
            },
            markers: _markers,
            initialCameraPosition: CameraPosition(
              //target: _latLng,
              target: i.position,
              zoom: _zoom,
            ),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 200,
            width: 300,
            offset: 35,
          ),
        ],
      ),
    );
  }
}