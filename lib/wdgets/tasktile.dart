import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool check;
  final String name;
  final void Function(bool?)? f;
  TodoTile({required this.check, required this.name, this.f});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          name,
          style: TextStyle(
            decoration: check ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: check,
          onChanged: f,
        ));
  }
}
