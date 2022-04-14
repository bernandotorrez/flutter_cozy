import 'dart:ffi';

class RecommendedSpace {
  int id;
  String imageUrl;
  String score;
  String name;
  int price;
  List places;

  RecommendedSpace({
    required this.id,
    required this.imageUrl,
    required this.score,
    required this.name,
    required this.price,
    required this.places,
  });
}
