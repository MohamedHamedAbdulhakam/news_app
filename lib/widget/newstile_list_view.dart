import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widget/news_tile.dart';

class newstile_list_view extends StatelessWidget {
  final List<ArticleModel> articles;

  const newstile_list_view({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            articalModel: articles[index],
          );
        },
      ),
    );
  }
}
