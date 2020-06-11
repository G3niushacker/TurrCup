import 'dart:convert';

List<SubServicesList> subServicesListFromJson(String str) => List<SubServicesList>.from(json.decode(str).map((x) => SubServicesList.fromJson(x)));

String subServicesListToJson(List<SubServicesList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubServicesList {
  String id;
  String title;
  String subtitle;
  String image;

  SubServicesList({
    this.id,
    this.title,
    this.subtitle,
    this.image,
  });

  factory SubServicesList.fromJson(Map<String, dynamic> json) => SubServicesList(
    id: json["id"],
    title: json["title"],
    subtitle: json["subtitle"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "subtitle": subtitle,
    "image": image,
  };
}
