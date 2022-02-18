class Task {
  bool isDone = false;
  String name = "";

  Task({required this.name, this.isDone = false});

  void toggle() {
    isDone = !isDone;
  }
}
