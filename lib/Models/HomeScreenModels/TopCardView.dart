import 'dart:convert';

List<TopCardView> topCardViewFromJson(String str) => List<TopCardView>.from(json.decode(str).map((x) => TopCardView.fromJson(x)));

String topCardViewToJson(List<TopCardView> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TopCardView {
  String id;
  String title;
  String subtitle;
  String image;

  TopCardView({
    this.id,
    this.title,
    this.subtitle,
    this.image,
  });

  factory TopCardView.fromJson(Map<String, dynamic> json) => TopCardView(
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
