class ImageLinks {
  final String? thumbnail;

  ImageLinks({required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> jsonData) => ImageLinks(
        thumbnail: jsonData['thumbnail'] as String?,
      );
}
