
import 'package:dio/dio.dart';
import 'package:retest1/model/post_model.dart';

class NewsServices {
  NewsServices(this.dio);
  final Dio dio;

  Future<List<PostModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6e1a2d469d044c86bb8aa985f0b63c4c&category=$category');
      Map<String, dynamic> data = response.data;

      List<dynamic> articles = data['articles'];
      List<PostModel> postsList = [];
      for (var article in articles) {
        PostModel postmodel = PostModel.fromJson(article);
        postsList.add(postmodel);
      }

      return postsList;
    } catch (e) {
      return [];
    }
  }
}
