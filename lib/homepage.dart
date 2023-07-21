import 'package:clocify_clone/Profile_info/profile.dart';

import 'package:flutter/material.dart';

import 'Screen/Calender.dart';
import 'Screen/Projects.dart';
import 'Screen/Report.dart';
import 'Screen/Timetracker.dart';
import 'Clone/timer.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  List<Widget> screen = [
    TimeScreen(),
    CalenderScreen(),
    ReportScreen(),
    MyprojectScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Clockify Clone',
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(Icons.more_time, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListViewScreen(),
                ),
              );
            },
          ),
        ],
        backgroundColor: Colors.blue[300],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: screen,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TimerScreen()));
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.access_time,
              color: Colors.white,
            ),
            label: 'Time tracker',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.bar_chart,
              color: Colors.white,
            ),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.folder,
              color: Colors.white,
            ),
            label: 'Projects',
          ),
        ],
      ),
    );
  }
}
