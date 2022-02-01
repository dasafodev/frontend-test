import 'package:flutter/material.dart';
import 'package:frontend_test/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  final isLogin = true.obs;

  void login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }

  void signUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void onPressMainButton() => isLogin.value ? login() : signUp();

  void changeMode() => isLogin.value = !isLogin.value;

  String welcomeText() => isLogin.value
      ? 'Inicie sesión y conozca toda la oferta de restaurantes que tenemos.'
      : 'Registrese y conozca toda la oferta de restaurantes que tenemos.';

  String buttonText() => isLogin.value ? 'Iniciar Sesión' : 'Registrarse';

  String changeModeText() => isLogin.value
      ? '¿No tiene cuenta? Registrese aquí'
      : '¿Ya tiene cuenta? Inicie sesión aquí';
}
