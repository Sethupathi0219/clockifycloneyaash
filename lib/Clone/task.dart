import 'package:flutter/material.dart';

class Task {
  Task(this.name);
  String name;
}

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  var Tasks = [Task("None"), Task("Flutter")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tasks'),
        ),
        body: ListView.builder(
            itemCount: Tasks.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(Tasks[index].name),
                onTap: () {
                  Navigator.pop(context, Tasks[index]);
                },
              );
            }));
  }
}
