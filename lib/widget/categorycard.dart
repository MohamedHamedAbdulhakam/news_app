import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return  CategoryView(category: category.categoryName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.imageAssetUrl))),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                color: Colors.deepOrange,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
