import 'package:flutter/material.dart';

class Tags {
  Tags(this.name);
  String name;
}

class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  var Tag = [Tags("None"), Tags("Training")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tags'),
        ),
        body: ListView.builder(
            itemCount: Tag.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(Tag[index].name),
                onTap: () {
                  Navigator.pop(context, Tag[index]);
                },
              );
            }));
  }
}
