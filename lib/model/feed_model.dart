

import 'dart:convert';

List<Feed> feedFromJson(String str) => List<Feed>.from(json.decode(str).map((x) => Feed.fromJson(x)));

String feedToJson(List<Feed> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Feed {
  Feed({
    this.queryId,
    this.queryText,
    this.comments,
    this.date,
    this.location,
  });

  int? queryId;
  String? queryText;
  int? comments;
  String? date;
  String? location;

  factory Feed.fromJson(Map<String, dynamic> json) => Feed(
    queryId: json["query_id"],
    queryText: json["query_text"],
    comments: json["comments"],
    date: json["date"],
    location: json["location"],
  );

  Map<String, dynamic> toJson() => {
    "query_id": queryId,
    "query_text": queryText,
    "comments": comments,
    "date": date,
    "location": location,
  };
}
