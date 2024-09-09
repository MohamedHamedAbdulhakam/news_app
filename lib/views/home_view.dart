import 'package:flutter/material.dart';

import '../widget/categories_list_view.dart';
import '../widget/news_list_view_builder.dart';

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
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewsListViewBuilder(category: 'general',),
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
