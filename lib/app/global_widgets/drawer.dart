import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frontend_test/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () => Get.offAllNamed(Routes.HOME),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Historial'),
            onTap: () => Get.offAllNamed(Routes.HISTORY),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Cerrar sesión'),
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
              FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
    );
  }
}
