import 'package:get/get.dart';

class RestaurantsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl =
        'https://travel-advisor.p.rapidapi.com/restaurants/list-by-latlng';
  }
}
