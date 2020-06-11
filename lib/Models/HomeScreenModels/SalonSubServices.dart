import 'dart:convert';

List<SalonSubServicesModel> salonSubServicesFromJson(String str) => List<SalonSubServicesModel>.from(json.decode(str).map((x) => SalonSubServicesModel.fromJson(x)));

String salonSubServicesToJson(List<SalonSubServicesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SalonSubServicesModel {
  String id;
  String image;
  String title;

  SalonSubServicesModel({
    this.id,
    this.image,
    this.title,
  });

  factory SalonSubServicesModel.fromJson(Map<String, dynamic> json) => SalonSubServicesModel(
    id: json["id"],
    image: json["image"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "title": title,
  };
}
