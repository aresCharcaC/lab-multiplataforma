import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // En lugar de double.infinity, usamos MediaQuery para obtener el ancho de la pantalla
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
      ),
    );
  }
}
