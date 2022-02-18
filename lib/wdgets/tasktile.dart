import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool check;
  final String name;
  final void Function(bool?)? f;
  final Function()? longPress;

  const TodoTile(
      {Key? key,
      required this.check,
      required this.name,
      this.f,
      this.longPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        name,
        style: TextStyle(
          decoration: check ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: check,
        onChanged: f,
      ),
    );
  }
}
