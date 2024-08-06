import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      // theme: ThemeData(
      // scaffoldBackgroundColor: const Color.fromARGB(237, 221, 221, 221)),
      getPages: AppPages.routes,
    ),
  );
}
