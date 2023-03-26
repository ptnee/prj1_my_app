import 'dart:async';
// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:uuid/uuid.dart';
// import 'package:http/http.dart' as http;


// import 'directions_model.dart';
import 'location_service.dart';
class GoogleSearchPlacesApi extends StatefulWidget {
  const GoogleSearchPlacesApi({Key? key}) : super(key: key);

  @override
  State<GoogleSearchPlacesApi> createState() => MapSampleState();
}

class MapSampleState extends State<GoogleSearchPlacesApi> {

  // TextEditingController _SearchController = TextEditingController();
  TextEditingController _originController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();

  Marker? _plexMarker;
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  Set<Marker> _marker = Set<Marker>();
  Set<Polyline> _polylines= Set<Polyline>();
  int _polylineIdCounter =1;
  /*
  @override
  void initState(){
    super.initState();
    _setMarker(LatLng(192.8334901395799,21.005033));
  }*/
  void _setMarker(LatLng point){
    setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId('marker'),
          position: point,
        ),
      );
    });
  }
  void _setPolyline(List<PointLatLng> points){
    final String polylineIdVal = 'polyline_$_polylineIdCounter';
    _polylineIdCounter ++;
    _polylines.add(
      Polyline(
        polylineId: PolylineId(polylineIdVal),
        width: 2,
        color: Colors.purpleAccent,
        points: points
            .map( (points) => LatLng( points.latitude, points.longitude),).toList(),
      ),
    );
  }
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.004488, 105.847188),
    zoom: 14.4746,
  );

  static const CameraPosition _kpl = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(21.005033, 105.846477),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Tìm kiếm địa điểm và đường đi' ,),
      ),
      body: Column(
        children:[
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _originController,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(hintText: 'Chọn vị trí bắt đầu'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    TextFormField(
                      controller: _destinationController,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(hintText: 'Chọn điểm đến'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: ()  async {
                    var directions = await LocationService().getDirections(
                        _originController.text,
                        _destinationController.text
                    );
                    _goToThePlace( directions['start_location']['lat'],
                                   directions['start_location']['lng'],
                                   directions['bounds_ne'],
                                   directions['bounds_sw'],
                    );
                    _setPolyline(directions['polyline_decoded']);
                    /*LocationService().getDirections(
                        _originController.text, _destinationController.text);*/
                    /*var place =
                     await LocationService().getPlace(_SearchController.text);
                    _goToThePlace(place);*/
                  },
                  icon: Icon(Icons.search)
              ),
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              /*markers:{
                if (_plexMarker!=null) _plexMarker!,
              },*/
              markers: _marker,
              onLongPress: _addMarker,
              polylines: _polylines,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToThePlace(
      //Map<String, dynamic> place
      double lat,
      double lng,
      Map<String, dynamic> boundsNe,
      Map<String, dynamic> boundsSw,
      ) async {
    //final double lat= place['geometry']['location']['lat'];
    //final double lng= place['geometry']['location']['lng'];

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(lat,lng),
              zoom: 12
          )
        )
    );
    controller.animateCamera(
      CameraUpdate.newLatLngBounds(
          LatLngBounds(
              southwest: LatLng(boundsSw['lat'], boundsSw['lng']),
              northeast: LatLng(boundsNe['lat'], boundsNe['lng']),
          ),
          25,
      ),
    );
    _setMarker(LatLng(lat, lng));
  }


  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kpl));
  }
  void _addMarker(LatLng pos) async {
    //if (_choose==null || _choose!=null )
      setState(() {
        _plexMarker = Marker(
          markerId: const MarkerId('choose'),
          infoWindow: const InfoWindow(title: 'choose'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
      });
  }
}