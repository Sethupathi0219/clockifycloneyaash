import 'package:clocify_clone/profile.dart';
import 'package:clocify_clone/time_tracker.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;

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
      body: Center(
        child: Text(
          'Page ${_currentIndex + 1}',
          style: const TextStyle(fontSize: 24),
        ),
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
              color: Colors.black,
            ),
            label: 'Time tracker',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.calendar_month,
              color: Colors.black,
            ),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.bar_chart,
              color: Colors.black,
            ),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[300],
            icon: const Icon(
              Icons.folder,
              color: Colors.black,
            ),
            label: 'Projects',
          ),
        ],
      ),
    );
  }
}
