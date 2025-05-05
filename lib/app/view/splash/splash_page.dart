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
          // En lugar de usar Row que puede causar problemas de restricciones
          const Shape(), // Usar Shape directamente
          const SizedBox(height: 79),
          Image.asset(
            'assets/images/onboarding-image.png',
            width: 180,
            height: 168,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 99),
          const H1('Lista de tareas'),
          const SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const TaskListPage();
                    },
                  ),
                );
              },
              child: const Text(
                'La mejor forma para que no se te olvide nada es anotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, height: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
