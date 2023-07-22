import 'package:flutter/material.dart';

class Project {
  Project(
    this.name,
  );
  String name;
  // String color;
}

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  var Projects = [Project("None"), Project("Team Yaash")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Projects'),
        ),
        body: ListView.builder(
            itemCount: Projects.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(Projects[index].name),
                onTap: () {
                  Navigator.pop(context, Projects[index]);
                },
              );
            }));
  }
}
