import 'package:flutter/material.dart';
import 'package:frontend_test/app/global_widgets/custom_input.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar restaurantes'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomInput(
            label: 'Ciudad',
            onChange: (newValue) => controller.cityName.value = newValue,
            icon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          screenText(),
        ],
      ),
    );
  }

  Widget screenText() {
    return Text(
      'Ingresa la ciudad en la que quieres buscar.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, color: Colors.black54),
    );
  }
}
