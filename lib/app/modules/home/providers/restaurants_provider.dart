import 'package:frontend_test/app/data/models/restaurant_model.dart';
import 'package:get/get.dart';

class RestaurantsProvider extends GetConnect {
  Future<Restaurants> getRestaurants(String latitude, String longitude) async {
    print('buscado');
    const header = {
      'x-rapidapi-key': '06c81d92a6msh22eb107d17a439cp18bd95jsn91f3584aeb0a',
      'x-rapidapi-host': 'travel-advisor.p.rapidapi.com'
    };
    final param = {'latitude': latitude, 'longitude': longitude, 'limit': '30'};
    final resp = await get(
        'https://travel-advisor.p.rapidapi.com/restaurants/list-by-latlng',
        headers: header,
        query: param);
    if (resp.statusCode == 200) {
      return restaurantsFromJson(resp.body);
    } else {
      throw Exception('Error al solicitar los restaurantes');
    }
  }
}
