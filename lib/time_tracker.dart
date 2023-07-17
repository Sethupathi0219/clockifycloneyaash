import 'dart:async';
import 'package:clocify_clone/project.dart';
import 'package:clocify_clone/task.dart';
import 'package:flutter/material.dart';

class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  late Timer _timer;
  int _seconds = 0;
  int _minutes = 0;
  int _hours = 0;

  Project? selectedProject;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
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
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Duration',
                style: TextStyle(fontSize: 22),
              ),
            ],
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
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: startTimer,
                          child: const Text('Start'),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                          onPressed: stopTimer,
                          child: const Text('Stop'),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                      ],
                    )),
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
                child: Icon(Icons.feed_sharp),
              ),
              // SizedBox(
              //   width: 20,
              // ),
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
            subtitle: Text(selectedProject?.name ?? "",
                style:
                    TextStyle(color: selectedProject?.color ?? Colors.black)),
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
            leading: const Icon(Icons.folder, size: 25.0),
            title: const Text('Task', style: TextStyle(fontSize: 20.0)),
            // subtitle: ,
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => task()));
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
