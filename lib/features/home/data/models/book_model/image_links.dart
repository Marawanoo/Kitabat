class ImageLinks {
  final String thumbnail;

  ImageLinks({required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> jsonDate) {
    return ImageLinks(thumbnail: jsonDate['thumbnail']);
  }
}
