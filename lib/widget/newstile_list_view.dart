import 'package:flutter/material.dart';
import 'package:news_app/widget/news_tile.dart';

class newstile_list_view extends StatelessWidget {
  const newstile_list_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return NewsTile();
      },
    );
  }
}
