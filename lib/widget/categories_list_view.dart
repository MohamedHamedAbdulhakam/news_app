import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'categorycard.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> catagories = const [
    CategoryModel(categoryName: 'programming', imageAssetUrl: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'health', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(categoryName: 'sport', imageAssetUrl: 'assets/sports.avif'),
    CategoryModel(categoryName: 'entertainment', imageAssetUrl: 'assets/general.avif'),
     CategoryModel(categoryName: 'science', imageAssetUrl: 'assets/science.avif'),
      CategoryModel(categoryName: 'general', imageAssetUrl: 'assets/general.avif')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (context, index) {
          return Categorycard(
            category: catagories[index],
          );
        },
      ),
    );
  }
}
