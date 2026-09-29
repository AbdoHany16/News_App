import 'package:flutter/material.dart';
import 'package:news_app/data/api_manager.dart';
import 'package:news_app/data/nwes_model.dart';
import 'package:news_app/views/widgets/item_card_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Article> articles = [];
  @override
  void initState() {
    super.initState();
    getSrticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("News"))),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemCardNews(article: articles[index]),
        itemCount: articles.length,
      ),
    );
  }

  void getSrticles() async {
    var newsModel = await ApiManager.getnews();
    articles = newsModel.articles ?? [];
    setState(() {});
  }
}

String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9c_Ygnlf1MYuZAIe0TQiqofBD3DKgCsV-V2pttaNp0g&s=10";
