import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(color: Colors.black),),
              Text("Cloud",style: TextStyle(color: Colors.orange),),
          ],
        ),
        backgroundColor: Colors.transparent ,
      ),
      body: Container(
        height: 200,
        width: 400,
       
        decoration: BoxDecoration(
           color: Colors.red,
           borderRadius: BorderRadius.circular(15),
           
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('th.jpg'))
          
        ),
        child: Center(child: Text("Buisness",style: TextStyle(color: Colors.deepOrange,fontSize: 30,fontWeight: FontWeight.bold,),),),
      ),
    );
  }
}