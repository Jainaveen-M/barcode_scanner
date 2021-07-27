import 'dart:convert';

import 'package:cubit/data/model.dart';
import 'package:http/http.dart' as http;

class Repo {
  Future<void> getData() async {
    final url =
        'http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=960f1b02257240a198f741b7784134b1';
    final response = await http.get(Uri.parse(url));
    var news = jsonDecode(response.body);
    var newsmodel = NewsModel.fromJson(news['articles']);
    print(response.body);
  }
}
