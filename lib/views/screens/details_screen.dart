import 'package:flutter/material.dart';
import 'package:news_app/views/screens/home_screen.dart';
import 'package:news_app/views/widgets/image_news.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Details News"))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          spacing: 20,
          crossAxisAlignment: .start,
          children: [
            ImageNews(image: imageTest, height: 300),
            Text(
              "Ukraine's President Zelensky to BBC: Blood ",
              style: Theme.of(context).textTheme.titleLarge,
            ), // Text

            Text(
              "Ukraine's President Zelensky to BBC: Blood mfgjkftcv tdkytxvtf tdhkbvtf krdvhtdkcm",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
