import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/newstile_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Row(
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
        body: Padding(
            padding: EdgeInsets.all(30),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: categories_list_view()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SliverToBoxAdapter(child: Expanded(child: newstile_list_view()))
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
            ));
  }
}
