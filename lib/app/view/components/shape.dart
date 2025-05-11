import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80, // Reducido de 120 a 80 para mejor proporción
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
      ),
    );
  }
}
