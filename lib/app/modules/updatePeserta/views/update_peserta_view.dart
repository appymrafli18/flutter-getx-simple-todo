import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_getx/app/modules/home/controllers/home_controller.dart';

import '../controllers/update_peserta_controller.dart';

class UpdatePesertaView extends GetView<UpdatePesertaController> {
  UpdatePesertaView({super.key, required this.index});
  final int index;
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController namaController =
        TextEditingController(text: homeController.data[index]['nama']);
    final TextEditingController umurController = TextEditingController(
        text: homeController.data[index]['umur'].toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('EDIT PESERTA'),
        backgroundColor: Colors.brown,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                labelText: "Nama",
                // hintText: "Masukkan Nama",
                // floatingLabelBehavior: FloatingLabelBehavior.always,
                // helperText: "Nama Harus Unik",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: umurController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Umur",
                // hintText: "Masukkan Umur",
                // floatingLabelBehavior: FloatingLabelBehavior.always,
                // helperText: "Umur Harus Unik",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {
                  Get.put(UpdatePesertaController()).editPeserta(
                    index: index,
                    nama: namaController.text,
                    umur: int.parse(umurController.text),
                    homeController: homeController,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text(
                  "EDIT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
