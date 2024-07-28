import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widget/newstile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

var future;

@override
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: 'general');
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return newstile_list_view(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("oops there was an error ,try later"),
          );
        } else {
          return SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? newstile_list_view(
    //             articles: articles,
    //           )
    //         : SliverToBoxAdapter(
    //             child: Text("oops there was an error ,try later"),
    //             );
  }
}
