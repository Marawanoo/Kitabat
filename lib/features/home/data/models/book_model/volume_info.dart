import 'image_links.dart';

class VolumeInfo {
  final String title;
  final List<String> authors;
  final ImageLinks imageLinks;

  VolumeInfo(
      {required this.title, required this.authors, required this.imageLinks});

  factory VolumeInfo.fromJson(Map<String, dynamic> jsonDate) {
    return VolumeInfo(
        title: jsonDate['title'],
        authors: jsonDate['authors'].cast<String>(),
        imageLinks: jsonDate['imageLinks']);
  }
}
