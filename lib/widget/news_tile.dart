import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticleModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
         borderRadius: BorderRadius.circular(6),
        child: Image.network(
        articalModel.image??'',
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        ),
         ),
        const SizedBox(
          height: 12,
        ),
        Text(articalModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500)),
        const SizedBox(
          height: 8,
        ),
        Text(articalModel.subtitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:const  TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
      ],
    );
  }
}
