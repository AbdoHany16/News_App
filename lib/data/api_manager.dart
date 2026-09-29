import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/data/nwes_model.dart';

class ApiManager {
  static Future<NewsModel> getnews() async {
    Uri url = Uri.https("newsapi.org", "v2/everything", {
      "q": "bitcoin",
      "apiKey": "a34b458022d4452bb157dc505d9fc917",
    });
    var response = await http.get(url);
    var responseString = response.body;
    var json = jsonDecode(responseString);
    return NewsModel.fromJson(json);
  }
}
