import 'package:flutter/material.dart';
import 'package:news_app/core/routs/app_routs.dart';
import 'package:news_app/core/theme/app_theme.dart';
import 'package:news_app/views/screens/details_screen.dart';
import 'package:news_app/views/screens/home_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      themeMode: .light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouts.details,
      routes: {
        AppRouts.home: (context) => HomeScreen(),
        AppRouts.details: (context) => DetailsScreen(),
      },
    );
  }
}
