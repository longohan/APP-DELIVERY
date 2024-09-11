import 'package:flutter/cupertino.dart';

class Food {
  final String name; //VD: cheese burger
  final String description; //a cheese burger
  final String imagePath; //assets/burger
  final double price; //0.99
  final FoodCategores categores; //burger
  List<Addon> availableAddons; //[Extra cheese, sause, extra patty]
  Food({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.categores,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategores {
  burges,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
