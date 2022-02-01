import 'package:flutter/material.dart';
import 'package:frontend_test/app/global_widgets/drawer.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de búsquedas'),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: ListView.separated(
          itemBuilder: (cont, index) => ListTile(
                title: Text(controller.history[index]),
              ),
          separatorBuilder: (cont, index) => Divider(),
          itemCount: controller.history.length),
    );
  }
}
