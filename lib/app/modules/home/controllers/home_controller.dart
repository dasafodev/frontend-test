import 'package:flutter/material.dart';
import 'package:frontend_test/app/modules/home/providers/cities_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // final searchController = TextEditingController();
  final cityName = ''.obs;
  final citiesProvider = CitiesProvider();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // searchController.addListener(() { });
    debounce(cityName, (newValue) {
      print(newValue);
      getData();
    }, time: 1.2.seconds);
  }

  getData() async {
    await citiesProvider.getCity(cityName.value);
  }
}
