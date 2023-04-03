import 'package:flutter/material.dart';

class VariantButton extends StatelessWidget {
  const VariantButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.engineVariant});
  final String label;
  final String? engineVariant;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 250,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: label == engineVariant ? Colors.green : null,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          label,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
