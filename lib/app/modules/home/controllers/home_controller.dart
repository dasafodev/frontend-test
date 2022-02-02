import 'package:frontend_test/app/data/models/restaurant_model.dart';
import 'package:frontend_test/app/modules/home/providers/cities_provider.dart';
import 'package:frontend_test/app/modules/home/providers/restaurants_provider.dart';
import 'package:frontend_test/app/utils/geo.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final cityName = ''.obs;
  final _citiesProvider = CitiesProvider();
  final _restaurantsProvider = RestaurantsProvider();
  final RxList<Restaurant> restaurants = RxList();
  final isLoading = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    debounce(cityName, (newValue) {
      print(newValue);
      getData();
    }, time: 1.2.seconds);
  }

  getLocation() async {
    isLoading.value = true;

    final position = await determinePosition();
    final restaurantsResp = (await _restaurantsProvider.getRestaurants(
            position.latitude.toString(), position.longitude.toString()))
        .data;
    restaurantsResp.removeWhere((element) => element.name == '');
    restaurants.clear();
    restaurants.addAll(restaurantsResp);
    print(position.altitude);
    print(position.longitude);
    isLoading.value = false;
  }

  getData() async {
    isLoading.value = true;
    if (cityName.value.length > 3) {
      box.write(DateTime.now().toIso8601String(), cityName.value);
      final city = await _citiesProvider.getCity(cityName.value);
      final restaurantsResp = (await _restaurantsProvider.getRestaurants(
              city.latitude.toString(), city.longitude.toString()))
          .data;
      restaurantsResp.removeWhere((element) => element.name == '');
      restaurants.clear();
      restaurants.addAll(restaurantsResp);
    } else {
      restaurants.clear();
    }
    isLoading.value = false;
  }
}
