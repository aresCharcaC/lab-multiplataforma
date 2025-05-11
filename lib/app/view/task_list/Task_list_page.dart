import 'package:flutter/material.dart';
import 'package:lab4_1/app/model/task.dart';
import 'package:lab4_1/app/view/components/h1.dart';
import 'package:lab4_1/app/view/components/shape.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final tasks = [
    Task(name: 'Ir al gimnasio'),
    Task(name: 'Comprar comida'),
    Task(name: 'Estudiar para el examen'),
    Task(name: 'Llamar a mamá'),
    Task(name: 'Enviar correo al profesor'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
        elevation: 0, // Sin sombra para mejor integración visual
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Center(
            child: Text('Atrás', style: TextStyle(fontWeight: FontWeight.w500)),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                const Shape(), // Shape directo
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ), // Espacio inferior
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/tasks-list-image.png',
                        width: 100, // Reducido de 120 a 100
                        height: 100, // Reducido de 120 a 100
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 16),
                      const H1('Completa tus tareas', color: Colors.red),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24, // Reducido de 30 a 24
              vertical: 20, // Reducido de 25 a 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const H1('Tareas'),
                Text(
                  '${tasks.length} pendientes',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 80), // Espacio para el FAB
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskItem(
                  task: tasks[index],
                  onTap: () {
                    setState(() {
                      tasks[index].done = !tasks[index].done;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            onPressed: () {
              _showNewTaskModal(context);
            },
            child: const Icon(Icons.add, size: 35),
          );
        },
      ),
    );
  }

  void _showNewTaskModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => const _NewTaskModal(),
    );
  }
}

class _NewTaskModal extends StatelessWidget {
  const _NewTaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          H1('Nueva tarea'),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text('Guardar')),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onTap;

  const TaskItem({super.key, required this.task, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16, // Reducido de 20 a 16
        vertical: 6, // Reducido de 8 a 6
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 2, // Sombra suave
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Bordes más redondeados
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Row(
              children: [
                Icon(
                  task.done ? Icons.check_circle : Icons.circle_outlined,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28, // Aumentado para mejor visibilidad
                ),
                const SizedBox(width: 16), // Aumentado de 10 a 16
                Text(
                  task.name,
                  style: TextStyle(
                    fontSize: 16, // Tamaño más legible
                    fontWeight: FontWeight.w500,
                    decoration:
                        task.done
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                    color:
                        task.done
                            ? const Color.fromARGB(255, 243, 24, 24)
                            : Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
