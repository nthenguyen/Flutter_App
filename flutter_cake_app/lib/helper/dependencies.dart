import 'package:flutter_cake_app/controllers/popular_product_controller.dart';
import 'package:flutter_cake_app/controllers/recommended_product_controller.dart';
import 'package:flutter_cake_app/data/api/api_client.dart';
import 'package:flutter_cake_app/data/repository/popular_product_repo.dart';
import 'package:flutter_cake_app/data/repository/recommended_product_repo.dart';
import 'package:flutter_cake_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
}
