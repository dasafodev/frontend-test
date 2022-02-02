import 'package:flutter/material.dart';
import 'package:frontend_test/app/global_widgets/custom_button.dart';
import 'package:frontend_test/app/global_widgets/custom_input.dart';
import 'package:frontend_test/app/global_widgets/drawer.dart';

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
      drawer: CustomDrawer(),
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
          CustomButton(
            text: 'Usar ubicación',
            onPressed: () => controller.getLocation(),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              // height: 300,
              child: Obx(() => !controller.isLoading.value
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        final rest = controller.restaurants[index];
                        return ListTile(
                          title: Text(rest.name),
                        );
                      },
                      itemCount: controller.restaurants.length,
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    )))
          // screenText(),
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
