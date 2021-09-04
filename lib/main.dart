import 'package:flutter/material.dart';

//'http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=960f1b02257240a198f741b7784134b1'
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
