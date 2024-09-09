import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/news_list_view_builder.dart';
import 'package:news_app/widget/news_tile.dart';
import 'package:news_app/widget/newstile_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding: EdgeInsets.all(30),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: categories_list_view()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewsListViewBuilder(),
            ],
          )

          //
          //
          //
          // Column(
          //   children: [
          //
          //   ],
          // ),
          ),
    );
  }
}
