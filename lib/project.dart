import 'package:flutter/material.dart';

class Project {
  Project(this.name, this.color);
  String name;
  Color color;
}

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  var projects = [Project("Test1", Colors.red), Project("Test2", Colors.grey)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Projects'),
        ),
        body: ListView.builder(
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(
                  Icons.circle,
                  color: projects[index].color,
                ),
                title: Text(projects[index].name),
                onTap: () {
                  Navigator.pop(context, projects[index]);
                },
              );
            })
        // body: ListView(
        //   children: [
        //     ListTile(
        //       leading: Icon(
        //         Icons.circle,
        //         color: Colors.grey[500],
        //       ),
        //       title: const Text('None'),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('Without client'),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.yellow,
        //       ),
        //       title: const Text(
        //         'Team Yaash',
        //       ),
        //       trailing: IconButton(
        //         icon: Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('Cloudi5'),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.green,
        //       ),
        //       title: const Text(
        //         'AmretGenie',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('Deity Tech'),
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         Icons.circle,
        //         color: Colors.pink[400],
        //       ),
        //       title: const Text(
        //         'RCB',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('NCompass'),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.pink,
        //       ),
        //       title: const Text(
        //         'Equinox',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.deepPurple,
        //       ),
        //       title: const Text(
        //         'Expense',
        //       ),
        //       trailing: IconButton(
        //         icon: Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.deepPurpleAccent,
        //       ),
        //       title: const Text(
        //         'Home Automation',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.purpleAccent,
        //       ),
        //       title: const Text(
        //         'Joymo',
        //       ),
        //       trailing: IconButton(
        //         icon: Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         Icons.circle,
        //         color: Colors.blue[800],
        //       ),
        //       title: const Text(
        //         'Oqic',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.blueAccent,
        //       ),
        //       title: const Text(
        //         'Premier',
        //       ),
        //       trailing: IconButton(
        //         icon: Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.pinkAccent,
        //       ),
        //       title: const Text(
        //         'QLM',
        //       ),
        //       trailing: IconButton(
        //         icon: Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('Thiran Technologies'),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.yellow,
        //       ),
        //       title: const Text(
        //         'Thiran Assignments',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('Zaaroz'),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.greenAccent,
        //       ),
        //       title: const Text(
        //         'Zaaroz iOS',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Divider(
        //         thickness: 1.0,
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 72),
        //       child: Text('Zencode'),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.pink,
        //       ),
        //       title: const Text(
        //         'Helpz',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.yellow,
        //       ),
        //       title: const Text(
        //         'Mediquest',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.yellow,
        //       ),
        //       title: const Text(
        //         'Minna',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.blue,
        //       ),
        //       title: const Text(
        //         'Prezit',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.green,
        //       ),
        //       title: const Text(
        //         'Runner app',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //     ListTile(
        //       leading: const Icon(
        //         Icons.circle,
        //         color: Colors.orange,
        //       ),
        //       title: const Text(
        //         'Voltra',
        //       ),
        //       trailing: IconButton(
        //         icon: const Icon(Icons.more_vert),
        //         onPressed: () {
        //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //               content: Row(
        //             children: const [
        //               Icon(
        //                 Icons.star,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Text('Add to favorites')
        //             ],
        //           )));
        //         },
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
