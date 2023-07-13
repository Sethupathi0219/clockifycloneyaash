import 'dart:async';
import 'package:clocify_clone/project.dart';
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

  void resetTimer() {
    _timer.cancel();
    setState(() {
      _seconds = 0;
      _minutes = 0;
      _hours = 0;
    });
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
        title: Text('Timer'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Duration',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          Center(
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    '${formatTime(_hours)}:${formatTime(_minutes)}:${formatTime(_seconds)}',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: startTimer,
                          child: Text('Start'),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                          onPressed: stopTimer,
                          child: Text('Stop'),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                          onPressed: resetTimer,
                          child: Text('Reset'),
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
              Expanded(
                flex: 1,
                child: Icon(Icons.feed_sharp),
              ),
              // SizedBox(
              //   width: 20,
              // ),
              Expanded(
                flex: 5,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'What are you working on?',
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black45,
          ),
          Padding(
            padding: EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(Icons.folder, size: 25.0),
              title: Text('Projecct', style: TextStyle(fontSize: 20.0)),
              // subtitle: ,
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project()));
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: const Divider(
              thickness: 1.0,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
