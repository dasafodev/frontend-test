import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HistoryController extends GetxController {
  final RxList<String> history = RxList();
  @override
  void onInit() {
    super.onInit();
    final box = GetStorage();
    final list = box.getKeys();
    final historyDate = [];
    historyDate.addAll(list);
    for (var element in historyDate) {
      history.add(box.read(element));
    }
  }
}
