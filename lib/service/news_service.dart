import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=42723e48db4b4c4986d34bc61fdfa02d&category=general');
    Map<String, dynamic> jsondata = response.data;
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
