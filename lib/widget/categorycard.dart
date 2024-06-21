import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage('th.jpg'))),
      child: Center(
        child: Text(
          "Buisness",
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
