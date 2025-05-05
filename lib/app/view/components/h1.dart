import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String text;
  final Color? color; // Color opcional que permite personalización

  const H1(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 18, // Tamaño adecuado para un encabezado H1
        fontWeight:
            FontWeight.w600, // Peso de fuente semi-negrita para destacar
        color: color, // Usar el color pasado o el predeterminado del tema
      ),
      overflow:
          TextOverflow.ellipsis, // Previene desbordamiento de texto con '...'
      maxLines: 2, // Limita a 2 líneas para mantener un diseño compacto
    );
  }
}
