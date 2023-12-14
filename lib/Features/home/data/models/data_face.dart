// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

BookModelFace temperaturesFromJson(String str) => BookModelFace.fromJson(json.decode(str));

String temperaturesToJson(BookModelFace data) => json.encode(data.toJson());

class BookModelFace {
  String image;
  String name;
  String auther;
  String type;
  String reting;

  BookModelFace({
    required this.image,
    required this.name,
    required this.auther,
    required this.type,
    required this.reting,
  });

  BookModelFace copyWith({
    String? image,
    String? name,
    String? auther,
    String? type,
    String? reting,
  }) =>
      BookModelFace(
        image: image ?? this.image,
        name: name ?? this.name,
        auther: auther ?? this.auther,
        type: type ?? this.type,
        reting: reting ?? this.reting,
      );

  factory BookModelFace.fromJson(Map<String, dynamic> json) => BookModelFace(
    image: json["image"],
    name: json["name"],
    auther: json["auther"],
    type: json["type"],
    reting: json["reting"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
    "auther": auther,
    "type": type,
    "reting": reting,
  };
}
