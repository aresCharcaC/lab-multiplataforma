import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String text;
  final Color? color;

  const H1(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 20, // Aumentado de 18 a 20
        fontWeight: FontWeight.w600,
        color: color,
        letterSpacing: 0.5, // Mejor espaciado entre letras
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
