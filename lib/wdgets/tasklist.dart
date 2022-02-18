import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

import 'tasktile.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<TaskData>().tasks;
    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoTile(
          check: tasks[index].isDone,
          name: tasks[index].name,
          f: (newValue) {
            context.read<TaskData>().checkTask(tasks[index]);
          },
          longPress: () {
            context.read<TaskData>().removeTask(tasks[index]);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
