import 'package:flutter/material.dart';
import 'package:frontend_test/app/global_widgets/custom_button.dart';
import 'package:frontend_test/app/global_widgets/custom_input.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bienvenido!',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05, vertical: 40),
                child: Obx(
                  () => Text(
                    controller.welcomeText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              CustomInput(
                  controller: controller.emailController,
                  label: 'Correo Electrónico',
                  icon: Icons.email_rounded),
              const SizedBox(
                height: 15,
              ),
              CustomInput(
                  controller: controller.passwordController,
                  label: 'Contraseña',
                  obscureText: true,
                  icon: Icons.password_rounded),
              const SizedBox(
                height: 20,
              ),
              Obx(() => CustomButton(
                    text: controller.buttonText(),
                    onPressed: () => controller.onPressMainButton(),
                  )),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => GestureDetector(
                  onTap: () => controller.changeMode(),
                  child: Text(controller.changeModeText(),
                      style: TextStyle(color: Colors.black54)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
