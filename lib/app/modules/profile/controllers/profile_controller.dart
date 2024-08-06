import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_getx/app/modules/home/controllers/home_controller.dart';

class ProfileController extends GetxController {
  final Map<String, dynamic> newData = {"nama": "", "umur": 0}.obs;
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();

  void addDataToHome() {
    if (namaController.text.isEmpty && umurController.text.isEmpty) return;
    int? umur = int.tryParse(umurController.text);

    if (umur == null) return;

    newData["nama"] = namaController.text;
    newData['umur'] = umur;

    Get.find<HomeController>().data.add(newData);
    Get.back();
  }
}
