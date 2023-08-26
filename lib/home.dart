import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.title,
    required this.toggleTheme,
  }) : super(key: key);

  final Function toggleTheme;
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                widget.toggleTheme();
              },
              icon: const Icon(Icons.brightness_6))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Below are various widgets that use the theme',
            ),
            const Divider(),
            TextButton(
                onPressed: (){_incrementCounter();},
                child: const Text('Text Button')),
            ElevatedButton(
                onPressed: (){_incrementCounter();},
                child: const Text('Elevated Button')),
            Text(
              'You have pushed the button this many times: $_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
