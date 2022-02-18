import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData with ChangeNotifier, DiagnosticableTreeMixin {
  final List<Task> _tasks = [
    Task(name: "buy milk"),
    Task(name: "buy egg"),
    Task(name: "buy bag"),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String text) {
    _tasks.add(Task(
      name: text,
    ));
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toggle();
    notifyListeners();
  }
}
