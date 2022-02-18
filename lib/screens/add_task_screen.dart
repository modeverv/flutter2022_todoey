import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  Function(String) callBack;

  AddTaskScreen({required this.callBack});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController textController = TextEditingController();
  String taskName = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              controller: textController,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskName = value;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  widget.callBack(taskName);
                  textController.clear();
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
