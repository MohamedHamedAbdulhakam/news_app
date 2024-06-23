import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://tse3.mm.bing.net/th?id=OIP.uzjmVjOd88SMdAYxmz14_QHaEO&pid=Api&P=0&h=220',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
            "this is the large title and its important for you to read it mohamed abo trika is agood player and he is a good man whose help poor people",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500)),
        const SizedBox(
          height: 8,
        ),
        const Text(
            "this is the small title and its important for you to read it mohamed abo trika is agood player and he is a good man whose help poor people",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
      ],
    );
  }
}
