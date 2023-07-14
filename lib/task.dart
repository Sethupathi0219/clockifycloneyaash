import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('None'),
          ),
          ListTile(
            title: Text('Android development'),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Add to favorites'),
                  ],
                )));
              },
            ),
          ),
          ListTile(
            title: Text('Figma Designing'),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Add to favorites'),
                  ],
                )));
              },
            ),
          ),
          ListTile(
            title: Text('Flutter development'),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Add to favorites'),
                  ],
                )));
              },
            ),
          ),
          ListTile(
            title: Text('Full stack development'),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Add to favorites'),
                  ],
                )));
              },
            ),
          ),
          ListTile(
            title: Text('IOS development'),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Add to favorites'),
                  ],
                )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
