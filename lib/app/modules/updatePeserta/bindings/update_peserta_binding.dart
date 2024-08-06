import 'package:get/get.dart';

import '../controllers/update_peserta_controller.dart';

class UpdatePesertaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdatePesertaController>(
      () => UpdatePesertaController(),
    );
  }
}
