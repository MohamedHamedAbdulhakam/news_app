import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=42723e48db4b4c4986d34bc61fdfa02d&category=general');
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    // for (var article in articles) {
    //   print(article['author']);
    // }
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description']);
      articleList.add(articleModel);
    }
    return articleList;
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
