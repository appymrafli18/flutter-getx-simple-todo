import 'package:get/get.dart';
import 'package:test_getx/app/modules/home/controllers/home_controller.dart';

class UpdatePesertaController extends GetxController {
  void editPeserta(
      {required int index,
      required String nama,
      required int umur,
      required HomeController homeController}) {
    homeController.data[index]["nama"] = nama;
    homeController.data[index]["umur"] = umur;

    homeController.data.refresh();
    Get.back();
  }
}
