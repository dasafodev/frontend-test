import 'package:frontend_test/app/modules/home/providers/cities_provider.dart';
import 'package:frontend_test/app/modules/home/providers/restaurants_provider.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CitiesProvider>(
      () => CitiesProvider(),
    );
    Get.lazyPut<RestaurantsProvider>(
      () => RestaurantsProvider(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
