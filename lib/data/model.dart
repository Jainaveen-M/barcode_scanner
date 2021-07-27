import 'dart:convert';

class NewsModel {
  final String author;
  final String title;
  final String desc;
  NewsModel({
    required this.author,
    required this.title,
    required this.desc,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'title': title,
      'desc': desc,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      author: map['author'],
      title: map['title'],
      desc: map['desc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) =>
      NewsModel.fromMap(json.decode(source));
}
