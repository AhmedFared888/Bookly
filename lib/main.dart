import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: KPrimaryColor),
      home: const SplashView(),
    );
  }
}
