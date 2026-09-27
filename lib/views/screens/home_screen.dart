import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/item_card_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("News"))),
      body: Column(children: [ItemCardNews()]),
    );
  }
}



String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9c_Ygnlf1MYuZAIe0TQiqofBD3DKgCsV-V2pttaNp0g&s=10";
