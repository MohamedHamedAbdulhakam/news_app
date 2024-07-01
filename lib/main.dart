import 'package:flutter/material.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/views/home_view.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(NewsApp());
  NewsService(dio: Dio()).getNews();
}

final dio = Dio();

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
