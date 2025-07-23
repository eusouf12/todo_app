import 'package:flutter/material.dart';

class TaskEdit extends StatefulWidget {
  const TaskEdit({super.key});

  @override
  State<TaskEdit> createState() => _TaskEditState();
}

class _TaskEditState extends State<TaskEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
      ),
      body: Center(
        child: Text('Welcome to the Task Edit Page!'),
      ),
    );
  }
}