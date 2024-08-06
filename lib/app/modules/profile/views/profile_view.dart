import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controllers = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('TAMBAH PESERTA'),
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
              controller: controllers.namaController,
              // onChanged: (value) => controllers.addData['nama'] = value,
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
              controller: controllers.umurController,
              keyboardType: TextInputType.number,
              // onChanged: (value) => controllers.addData['umur'] = value,
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
                  controllers.addDataToHome();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text(
                  "TAMBAH",
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
