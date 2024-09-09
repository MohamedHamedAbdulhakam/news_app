import 'dart:core';
import 'dart:core' as core;
import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=42723e48db4b4c4986d34bc61fdfa02d&category=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);

        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }

  // void getgeneral_news() async {
  //   final response = await dio.get(
  //       'https://newsapi.org/v2/top-headlines?country=us&apiKey=42723e48db4b4c4986d34bc61fdfa02d');
  //   print(response);
  // }

  // void getsports_news() async {
  //   final response = await dio.get(
  //       'https://newsapi.org/v2/top-headlines?country=us&apiKey=42723e48db4b4c4986d34bc61fdfa02d');
  //   print(response);
  // }
}
