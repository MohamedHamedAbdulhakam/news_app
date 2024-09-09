import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'news_tile.dart';

class NewstileListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewstileListView({super.key, required this.articles});

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
