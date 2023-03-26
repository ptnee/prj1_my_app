import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_app/ggmap_/custom_marker_info_window.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  final Color highslightColor = Color(0xfff192ea);

  String address = '' ;
  final Completer<GoogleMapController> _controller = Completer();


  Future<Position> _getUserCurrentLocation() async {


    await Geolocator.requestPermission().then((value) {

    }).onError((error, stackTrace){
      print(error.toString());
    });

    return await Geolocator.getCurrentPosition();

  }


  final List<Marker> _markers =  <Marker>[];

  static const CameraPosition _kGooglePlex =  CameraPosition(
    target: LatLng(21.005077, 105.845556),
    zoom: 16,
  );


  List<Marker> list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(21.005077, 105.845556),
        infoWindow: InfoWindow(
            title: 'some Info '
        )
    ),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _markers.addAll(list);
    //loadData();
  }

  loadData(){
    _getUserCurrentLocation().then((value) async {
      _markers.add(
          Marker(
              markerId: const MarkerId('SomeId'),
              position: LatLng(value.latitude ,value.longitude),
              infoWindow:  InfoWindow(
                  title: address
              )
          )
      );

      final GoogleMapController controller = await _controller.future;
      CameraPosition _kGooglePlex =  CameraPosition(
        target: LatLng(value.latitude ,value.longitude),
        zoom: 14,
      );
      controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text('Hiển thị vị trí'),
          actions: <Widget> [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContextreviewst){
                  return CustomMarkerInfoWindowScreen();
                },
                  settings: RouteSettings(
                    arguments: _markers[_markers.length -1],
                  ),
                ));
              },
              icon: const Icon(Icons.add_chart),
            ),
          ]
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GoogleMap(
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.normal,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              markers: Set<Marker>.of(_markers),
              onMapCreated: (GoogleMapController controller){
                _controller.complete(controller);
              },
            ),
            Container(
              height: MediaQuery.of(context).size.height * .2,
              decoration: BoxDecoration(
                  color: highslightColor,
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      _getUserCurrentLocation().then((value) async {
                        _markers.add(
                            Marker(
                                markerId: const MarkerId('SomeId'),
                                position: LatLng(value.latitude ,value.longitude),
                                infoWindow:  InfoWindow(
                                    title: address
                                )
                            )
                        );
                        final GoogleMapController controller = await _controller.future;

                        CameraPosition _kGooglePlex =  CameraPosition(
                          target: LatLng(value.latitude ,value.longitude),
                          zoom: 14,
                        );
                        controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));

                        List<Placemark> placemarks = await placemarkFromCoordinates(value.latitude ,value.longitude);


                        final add = placemarks.first;
                        address = add.locality.toString() +" "+add.administrativeArea.toString()+" "+add.subAdministrativeArea.toString()+" "+add.country.toString();

                        setState(() {

                        });
                      });
                      print(_markers[_markers.length -1]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                            child: Text(
                              'Current Location' ,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(address),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }


}