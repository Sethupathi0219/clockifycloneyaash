import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Mypass()));

class Mypass extends StatefulWidget {
  const Mypass({super.key});

  @override
  State<Mypass> createState() => _MypassState();
}

class _MypassState extends State<Mypass> {
  bool _obscureText = true;
  bool _Theme = false;
  bool button = false;

  IconData light = Icons.sunny;
  IconData dark = Icons.nights_stay;

  ThemeData lighttheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.yellow,
  );
  ThemeData darktheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _Theme ? darktheme : lighttheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Password'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _Theme = !_Theme;
                  });
                },
                icon: Icon(_Theme ? dark : light))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                  hintText: 'password',
                  labelText: 'password',
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text('next')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              button = !button;
            });
          },
          child: Icon(button ? Icons.square : Icons.play_arrow),
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
