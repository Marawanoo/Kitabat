import 'image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  ImageLinks? imageLinks;
  String? description;
  num? rating;
  List<String>? category;
  String? previewLink;

  VolumeInfo(
      {this.title,
      this.authors,
      this.imageLinks,
      this.description,
      this.rating,
      this.category,
      this.previewLink});

  factory VolumeInfo.fromJson(Map<String, dynamic> jsonDate) {
    return VolumeInfo(
        title: jsonDate['title'] as String?,
        authors: (jsonDate['authors'] as List<dynamic>?)
            ?.map((authors) => authors.toString())
            .toList(),
        imageLinks: jsonDate['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(
                jsonDate['imageLinks'] as Map<String, dynamic>),
        description: jsonDate['description'] as String?,
        rating: jsonDate['averageRating'] as num?,
        category: (jsonDate['categories'] as List<dynamic>?)
            ?.map((authors) => authors.toString())
            .toList(),
        previewLink: jsonDate['previewLink'] as String?);
  }
}
