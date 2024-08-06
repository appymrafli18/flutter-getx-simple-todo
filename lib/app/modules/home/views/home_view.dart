import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_getx/app/modules/profile/views/profile_view.dart';
import 'package:test_getx/app/modules/updatePeserta/views/update_peserta_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    print("REBUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text('SEMUA PESERTA'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const ProfileView());
              },
              icon: const Icon(
                Icons.add,
                // color: Colors.white,
              ))
        ],
      ),
      body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Obx(() {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: controller.data.length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => UpdatePesertaView(
                          index: index,
                        ));
                  },
                  child: Card(
                    color: Colors.white,
                    borderOnForeground: true, // Sesuaikan warna latar belakang
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${controller.data[index]['nama']}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${controller.data[index]['umur']} Tahun",
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    )),
                  ),
                );
              },
            );
          })),
      // body:
    );
  }
}

/*
Snackbar VERSI FLUTTER
ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Hello")));


Snackbar VERSI GETX
Get.snackbar(
"Terjadi Kesalahan!",
"Password Salah!",
snackPosition: SnackPosition.BOTTOM,
);
*/
