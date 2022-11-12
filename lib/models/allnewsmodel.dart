// To parse this JSON data, do
//
//     final allnews = allnewsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Allnews allnewsFromJson(String str) => Allnews.fromJson(json.decode(str));

String allnewsToJson(Allnews data) => json.encode(data.toJson());

class Allnews {
  Allnews({
    required this.news,
  });

  final List<News> news;

  factory Allnews.fromJson(Map<String, dynamic> json) => Allnews(
        news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "news": List<dynamic>.from(news.map((x) => x.toJson())),
      };
}

class News {
  News({
    required this.newsId,
    required this.title,
    required this.link,
    required this.urlToImage,
    required this.imageInLocalStorage,
    required this.imageFileName,
    required this.pubDate,
    required this.content,
    required this.reference,
  });

  final String newsId;
  final String title;
  final String link;
  final String urlToImage;
  final ImageInLocalStorage? imageInLocalStorage;
  final String imageFileName;
  final DateTime pubDate;
  final String content;
  final String reference;

  factory News.fromJson(Map<String, dynamic> json) => News(
        newsId: json["news_id"],
        title: json["title"],
        link: json["link"],
        urlToImage: json["urlToImage"],
        imageInLocalStorage:
            imageInLocalStorageValues.map[json["imageInLocalStorage"]],
        imageFileName: json["imageFileName"],
        pubDate: DateTime.parse(json["pubDate"]),
        content: json["content"],
        reference: json["reference"],
      );

  Map<String, dynamic> toJson() => {
        "news_id": newsId,
        "title": title,
        "link": link,
        "urlToImage": urlToImage,
        "imageInLocalStorage":
            imageInLocalStorageValues.reverse[imageInLocalStorage],
        "imageFileName": imageFileName,
        "pubDate": pubDate.toIso8601String(),
        "content": content,
        "reference": reference,
      };
}

enum ImageInLocalStorage { LOGO_PIC_RESIZED_JPG }

final imageInLocalStorageValues = EnumValues(
    {"/logo-pic-resized.jpg": ImageInLocalStorage.LOGO_PIC_RESIZED_JPG});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
