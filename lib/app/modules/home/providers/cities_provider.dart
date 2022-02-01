import 'package:frontend_test/app/data/models/city_model.dart';
import 'package:get/get.dart';

class CitiesProvider extends GetConnect {
  Future<City> getCity(String cityName) async {
    print('buscado');
    const header = {'X-Api-Key': '4jXjgo5yCpqycszaxxAjzg==bbYaGJdO12BalzkB'};
    final param = {'name': cityName};
    final resp = await get('https://api.api-ninjas.com/v1/city',
        headers: header, query: param);
    if (resp.statusCode == 200) {
      return cityFromJson(resp.body).first;
    } else {
      throw Exception('Error al solicitar las ciudades');
    }
  }
}
