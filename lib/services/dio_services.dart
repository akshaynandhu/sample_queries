import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:sample_queries/api/api_url.dart';
import 'package:sample_queries/model/feed_model.dart';

class DioService {
  Dio? _dio;

  DioService() {
    _dio = Dio();
  }

  Future<List<Feed>?> fetchDetails() async {
    try {
      final feedList = <Feed>[];
      Response response = await _dio!.get(feedUrl);
      debugPrint(response.data.toString());
      Feed? feedInstance;

      for(var item in response.data){
        feedInstance = Feed.fromJson(item);
        feedList.add(feedInstance);
      }

      debugPrint("Got The Value!!!");
      return feedList;
    } on DioError catch (dioError) {
      debugPrint(dioError.message.toString());
    }
  }
}
