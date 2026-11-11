import 'package:demogetx/app/core/bindings/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/home/bindings/home_binding.dart';
import 'modules/home/view/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // GetMaterialApp is important instead of normal MaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
