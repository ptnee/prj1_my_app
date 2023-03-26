import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


class Autogenerated {
  String? name;
  String? img;
  String? adr;

  Autogenerated({this.name, this.img, this.adr});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    adr = json['adr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['img'] = this.img;
    data['adr'] = this.adr;
    return data;
  }
}
Future <String> _loadAStudentAsset() async {
  return await rootBundle.loadString('data_crawl/product.json');
}
