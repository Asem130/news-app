class PostModel {
  late String ?image;
  final String title;
  late String ?subTitle;
   PostModel(
      {required this.image, required this.title, required this.subTitle});
  factory PostModel.fromJson(json) {
    return PostModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}
