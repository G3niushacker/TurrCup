import 'dart:convert';

List<ServiceCatgories> serviceCatgoriesFromJson(String str) => List<ServiceCatgories>.from(json.decode(str).map((x) => ServiceCatgories.fromJson(x)));

String serviceCatgoriesToJson(List<ServiceCatgories> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ServiceCatgories {
  String id;
  String image;
  String title;

  ServiceCatgories({
    this.id,
    this.image,
    this.title,
  });

  factory ServiceCatgories.fromJson(Map<String, dynamic> json) => ServiceCatgories(
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
