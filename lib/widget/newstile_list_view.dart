import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widget/news_tile.dart';

class newstile_list_view extends StatefulWidget {
  const newstile_list_view({
    super.key,
  });

  @override
  State<newstile_list_view> createState() => _newstile_list_viewState();
}

class _newstile_list_viewState extends State<newstile_list_view> {
  List<ArticleModel> articles = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getgeneral_news();
  }

  Future<void> getgeneral_news() async {
    articles = await NewsService(dio: Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articalModel: articles[index],
      );
    }));
  }
}
