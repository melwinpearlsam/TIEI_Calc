import 'package:calculator/bindings/app_binding.dart';
import 'package:calculator/screens/calculate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      title: 'Metal Bearing Calc',
      theme: ThemeData(primarySwatch: Colors.lightGreen, useMaterial3: true),
      home: CalculateWidget(),
    );
  }
}
