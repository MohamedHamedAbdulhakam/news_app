import 'package:flutter/material.dart';
import 'package:news_app/widget/categorycard.dart';

class categories_list_view extends StatelessWidget {
  const categories_list_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return Categorycard();
      }),
    );
  }
}
