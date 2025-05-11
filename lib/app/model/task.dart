class Task {
  final String name;
  bool done; // Ya no es final para poder cambiar su estado

  Task({required this.name, this.done = false});
}
