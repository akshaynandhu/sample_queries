import 'package:dio/dio.dart';
import 'package:sample_queries/api/api_url.dart';
import 'package:sample_queries/model/feed_model.dart';

class DioService{

  Dio? _dio;

  DioService(){
    _dio = Dio();
  }

  Future<List<Feed>?> fetchfeed() async{
    try{
      Response response = await _dio!.get(feedUrl);
      Feed feed = Feed.fromJson(response.data);
      return feed.results;
    }on DioError catch(dioError){
      debugPrint(dioError.message.toString());
    }
  }


}