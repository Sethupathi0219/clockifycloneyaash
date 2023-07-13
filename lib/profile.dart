import 'package:clocify_clone/settings.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Info'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: Text(
                        'KS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Kumaran Sethupathi',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    'kumaransethupathi2000@gmail.com',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                size: 30.0,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const settings()));
                });
              },
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.help_outline_rounded, size: 30.0),
              title: Text('Help', style: TextStyle(fontSize: 20.0)),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.headset_mic, size: 30.0),
              title: Text('Support', style: TextStyle(fontSize: 20.0)),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.logout, size: 30.0),
              title: const Text('Log out', style: TextStyle(fontSize: 20.0)),
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const alert()));
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure'),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('CONFIRM'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('CANCEL'),
        ),
      ],
    );
  }
}
