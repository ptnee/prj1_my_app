import 'dart:convert' as convert;
import 'dart:convert';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:http/http.dart' as http;
class LocationService{
   final String key = "AIzaSyDQ2c_pOSOFYSjxGMwkFvCVWKjYOM9siow";
   Future<String> getPlaceID(String input) async{
     //final String url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype&key=$key';
     final String url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&key=$key';
     var response = await http.get(Uri.parse(url));
     //var json = convert.jsonDecode(response.body);
     var placeList = json.decode(response.body)['predictions'];
     Map mnore;
     mnore = placeList[0] as Map;
     var placeId= mnore['place_id'];
     print(placeId);
     return placeId;
     //var placeId = json['candidates'][0]['place_id'] as String;
     //print(placeId);
     //return placeId;

   }
   Future<Map<String, dynamic>> getPlace(String input) async {
     final placeId = await getPlaceID(input);
     final String url = 'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
     var response = await http.get(Uri.parse(url));
     var json = convert.jsonDecode(response.body);
     var results = json['result'] as Map<String, dynamic>;
     print(results);
     return results;
   }
   Future<Map<String, dynamic>> getDirections(String origin, String destination) async {
     final String url = 'https://maps.googleapis.com/maps/api/directions/json?origin=$origin&destination=$destination&key=$key';
     var response = await http.get(Uri.parse(url));
     var json = convert.jsonDecode(response.body) ;
     var results ={
       'bounds_ne': json['routes'][0]['bounds']['northeast'],
       'bounds_sw': json['routes'][0]['bounds']['southwest'],
       'start_location': json['routes'][0]['legs'][0]['start_location'],
       'end_location': json['routes'][0]['legs'][0]['end_location'],
       'polyline': json['routes'][0]['overview_polyline']['points'],
       'polyline_decoded': PolylinePoints().decodePolyline(json['routes'][0]['overview_polyline']['points'],),
     };
     print(results);
     return results;
   }
}