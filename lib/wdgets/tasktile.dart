import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  const TodoTile({Key? key}) : super(key: key);

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "aaaaa bbbbbb",
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: MyCheck(
          check: checked,
          f: (bool? newValue) {
            setState(() {
              checked = newValue!;
            });
          }),
    );
  }
}

class MyCheck extends StatelessWidget {
  final void Function(bool?)? f;
  final bool check;

  const MyCheck({required this.check, this.f});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: check,
      onChanged: f,
    );
  }
}
