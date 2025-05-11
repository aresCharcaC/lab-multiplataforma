import 'package:flutter/material.dart';
import 'package:lab4_1/app/view/task_list/Task_list_page.dart';
import 'package:lab4_1/app/view/components/shape.dart';
import 'package:lab4_1/app/view/components/h1.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Shape(), // Shape directo sin Row
          const SizedBox(height: 50), // Reducido de 79 a 50
          Image.asset(
            'assets/images/onboarding-image.png',
            width: 200, // Aumentado de 180 a 200
            height: 180, // Aumentado de 168 a 180
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 60), // Reducido de 99 a 60
          const H1('Lista de tareas'),
          const SizedBox(height: 25), // Aumentado de 21 a 25
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ), // Aumentado de 32 a 40
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TaskListPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'La mejor forma para que no se te olvide nada es anotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15, // Aumentado de 14 a 15
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
