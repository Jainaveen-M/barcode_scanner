import 'package:cubit/repo.dart';
import 'package:flutter/material.dart';

//'http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=960f1b02257240a198f741b7784134b1'
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
  Repo().getData();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Repo().getData();
    print("init dummy state");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Cubit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text("Center"),
          ),
          Hero(
            tag: 'lol',
            child: Container(
              child: Image.asset(
                'assets/lollipop.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          Hero(
            tag: "hello",
            child: Container(
              child: Text(
                "Hello word flutter web!",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.grey,
              width: 200,
              height: 100,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
