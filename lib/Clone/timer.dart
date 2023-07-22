import 'dart:async';

import 'package:flutter/material.dart';

import 'project.dart';
import 'tags.dart';
import 'task.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late Timer _timer;
  int _seconds = 0;
  int _minutes = 0;
  int _hours = 0;
  bool isTimerOn = false;
  void startTimer() {
    if (isTimerOn == false) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          _seconds++;
          if (_seconds >= 60) {
            _seconds = 0;
            _minutes++;
            if (_minutes >= 60) {
              _minutes = 0;
              _hours++;
            }
          }
        });
      });
    } else {
      _timer.cancel();
    }
    setState(() {
      isTimerOn = !isTimerOn;
    });
  }

  Project? selectedProject;
  Task? selectedTask;
  Tags? selectedTags;

  void stopTimer() {
    _timer.cancel();
  }

  String formatTime(int time) {
    return time.toString().padLeft(2, '0');
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Duration',
            style: TextStyle(fontSize: 22),
          ),
          Center(
            child: Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    '${formatTime(_hours)}:${formatTime(_minutes)}:${formatTime(_seconds)}',
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: ElevatedButton(
                    onPressed: startTimer,
                    child: Icon(
                        isTimerOn ? Icons.square_rounded : Icons.play_arrow),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black45,
          ),
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: Icon(Icons.feed_outlined),
              ),
              Expanded(
                flex: 5,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'What are you working on?',
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.folder, size: 25.0),
            title: const Text('Project', style: TextStyle(fontSize: 20.0)),
            subtitle: Text(
              selectedProject?.name ?? "",
              // style:
              //     TextStyle(color: selectedProject?.color ?? Colors.black)
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProjectScreen()))
                    .then((value) => setState(() {
                          selectedProject = value;
                        }));
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Divider(
              thickness: 1.0,
              color: Colors.black45,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.assignment, size: 25.0),
            title: const Text('Task', style: TextStyle(fontSize: 20.0)),
            subtitle: Text(selectedTask?.name ?? ""),
            onTap: () {
              setState(() {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskScreen()))
                    .then((value) => setState(() {
                          selectedTask = value;
                        }));
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Divider(
              thickness: 1.0,
              color: Colors.black45,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.local_offer, size: 25.0),
            title: Text('Tags', style: TextStyle(fontSize: 20.0)),
            subtitle: Text(selectedTags?.name ?? ""),
            onTap: () {
              setState(() {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TagsScreen()))
                    .then((value) => setState(() {
                          selectedTags = value;
                        }));
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Divider(
              thickness: 1.0,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
