import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor:
            Colors.white, // Color del texto en la barra para mejor contraste
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0), // Padding para mejor apariencia
          child: Text(
            'Bienvenido a la página principal',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign:
                TextAlign.center, // Centrar el texto para mejor apariencia
          ),
        ),
      ),
    );
  }
}
