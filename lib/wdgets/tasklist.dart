import 'package:flutter/material.dart';

import 'tasktile.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TodoTile(),
        TodoTile(),
        TodoTile(),
      ],
    );
  }
}
