class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final Source? source;
  ArticleModel(
      { //required this.source,
      required this.image,
      required this.title,
      required this.subtitle,
      this.source});
}

class Source {
  final String name;
  final String id;
  Source({required this.id, required this.name});
}
