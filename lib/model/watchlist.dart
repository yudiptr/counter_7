// To parse this JSON data, do
//
//     final WatchList = WatchListFromJson(jsonString);

import 'dart:convert';

List<WatchList> WatchListFromJson(String str) =>
    List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String WatchListToJson(List<WatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  WatchList(
      {required this.movie_name,
      required this.movie_date,
      required this.movie_rating,
      required this.watched_movie,
      required this.movie_review});

  String movie_name;
  String movie_date;
  int movie_rating;
  bool watched_movie;
  String movie_review;

  void changeStatus() {
    this.watched_movie = !this.watched_movie;
  }

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        movie_name: json["fields"]["movie_name"],
        movie_date: json["fields"]["movie_date"],
        movie_rating: json["fields"]["movie_rating"],
        watched_movie: json["fields"]["watched_movie"],
        movie_review: json["fields"]["movie_review"],
      );

  Map<String, dynamic> toJson() => {
        "movie_name": movie_name,
        "movie_date": movie_date,
        "movie_rating": movie_rating,
        "movie_review": movie_review,
        "watched_movie": watched_movie,
      };
}
