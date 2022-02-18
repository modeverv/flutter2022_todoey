import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

import 'tasktile.dart';

class TodoList extends StatefulWidget {
  List<Task> tasks;

  TodoList({
    required this.tasks,
  });

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoTile(
          check: widget.tasks[index].isDone,
          name: widget.tasks[index].name,
          f: (newValue) {
            setState(() {
              widget.tasks[index].toggle();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );

//    return ListView(
//      children: [
//        TodoTile(),
//        TodoTile(),
//        TodoTile(),
//      ],
//    );
  }
}
