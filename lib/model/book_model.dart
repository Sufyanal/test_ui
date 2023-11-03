// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  List<Book>? data;
  String? message;

  BookModel({
    this.data,
    this.message,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        data: json["data"] == null
            ? []
            : List<Book>.from(json["data"]!.map((x) => Book.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class Book {
  String? author;
  String? country;
  String? imageLink;
  String? language;
  String? link;
  int? pages;
  String? title;
  int? year;
  int? price;
  int? rating;
  int? reviews;
  bool? isLiked;

  Book({
    this.author,
    this.country,
    this.imageLink,
    this.language,
    this.link,
    this.pages,
    this.title,
    this.year,
    this.price,
    this.rating,
    this.reviews,
    this.isLiked,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        author: json["author"],
        country: json["country"],
        imageLink: json["imageLink"],
        language: json["language"],
        link: json["link"],
        pages: json["pages"],
        title: json["title"],
        year: json["year"],
        price: json["price"],
        rating: json["rating"],
        reviews: json["reviews"],
        isLiked: json["is_liked"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "country": country,
        "imageLink": imageLink,
        "language": language,
        "link": link,
        "pages": pages,
        "title": title,
        "year": year,
        "price": price,
        "rating": rating,
        "reviews": reviews,
        "is_liked": isLiked,
      };
}
