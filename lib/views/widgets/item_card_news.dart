import 'package:flutter/material.dart';
import 'package:news_app/data/nwes_model.dart';
import 'package:news_app/views/screens/home_screen.dart';
import 'package:news_app/views/widgets/image_news.dart';

class ItemCardNews extends StatelessWidget {
  const ItemCardNews({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 10,
        crossAxisAlignment: .start,
        children: [
          ImageNews(image: article.urlToImage ?? imageTest),
          // Image.network
          Text(
            article.author ?? "",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            article.title ?? "",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
