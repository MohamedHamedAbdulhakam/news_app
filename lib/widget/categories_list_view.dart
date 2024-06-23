import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/categorycard.dart';

class categories_list_view extends StatelessWidget {
  const categories_list_view({
    super.key,
  });
final List<CategoryModel> catagories=const[
  CategoryModel(categoryName: 'buisness', imageAssetUrl: 'buisness.jpg'),
  CategoryModel(categoryName: 'entertainment', imageAssetUrl: 'entertainment.jpg'),
  CategoryModel(categoryName: 'sport', imageAssetUrl: 'assets\sport1.jpg'),
  CategoryModel(categoryName: 'sport', imageAssetUrl: 'assets\sport2.jpg')
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (context, index) {
        return Categorycard(category: catagories[index],);
      }),
    );
  }
}
