import 'dart:async';

import 'package:flutter/material.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
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

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Row(
            children: [
              const SizedBox(
                width: 90,
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
                padding: EdgeInsets.only(right: 25.0),
                child: ElevatedButton(
                  onPressed: startTimer,
                  child:
                      Icon(isTimerOn ? Icons.square_rounded : Icons.play_arrow),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          color: Colors.black45,
        )
      ],
    ));
  }
}
