import 'package:calculator/constants/enums.dart';
import 'package:calculator/constants/sizes.dart';
import 'package:calculator/screens/calculate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VariantSelectScreen extends StatelessWidget {
  const VariantSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Variant Selection Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VariantButton(engineVariant: EngineVariant.OnePointFive.getVariant),
            const SizedBox(height: 32.0),
            VariantButton(
              engineVariant: EngineVariant.Two.getVariant,
              bgColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

class VariantButton extends StatelessWidget {
  const VariantButton({super.key, required this.engineVariant, this.bgColor});
  final String engineVariant;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: systemWidth - 200,
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => CalculateWidget(
                engineVariant: engineVariant,
              ));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 16.0,
          ),
          backgroundColor: bgColor ?? Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: Text(
          engineVariant,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
