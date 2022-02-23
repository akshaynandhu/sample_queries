import 'package:get/get.dart';
import 'package:sample_queries/model/feed_model.dart';
import 'package:sample_queries/services/dio_services.dart';

class HomeController extends GetxController{
  static HomeController homeController = Get.find();

  Future<List<Feed>?>fetchHomeDetails() async{
    return await DioService().fetchDetails();
  }

}