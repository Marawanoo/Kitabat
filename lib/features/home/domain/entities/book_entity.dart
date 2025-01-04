import 'package:hive_flutter/hive_flutter.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String image;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? author;
  @HiveField(3)
  final String? description;
  @HiveField(4)
  final num? rating;
  @HiveField(5)
  final String? category;
  @HiveField(6)
  final num? price;

  BookEntity({
    required this.image,
    required this.title,
    required this.author,
    required this.description,
    required this.rating,
    required this.category,
    required this.price,
  });
}
