// To parse this JSON data, do
//
//     final gameModel = gameModelFromJson(jsonString);

import 'dart:convert';

List<GameModel> gameModelFromJson(String str) => List<GameModel>.from(json.decode(str).map((x) => GameModel.fromJson(x)));

String gameModelToJson(List<GameModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GameModel {
  GameModel({
    required this.id,
    required this.name,
    required this.console,
    required this.image,
    required this.rating,
    required this.price,
  });

  int id;
  String name;
  String console;
  String image;
  String rating;
  int price;

  factory GameModel.fromJson(Map<String, dynamic> json) => GameModel(
    id: json["id"],
    name: json["name"],
    console: json["console"],
    image: json["image"],
    rating: json["rating"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "console": console,
    "image": image,
    "rating": rating,
    "price": price,
  };
}
