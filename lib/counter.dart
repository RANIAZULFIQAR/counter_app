import 'package:flutter/material.dart';

class Counter_App extends StatefulWidget {
  const Counter_App({super.key});

  @override
  _Counter_AppState createState() => _Counter_AppState();
}

class _Counter_AppState extends State<Counter_App> {
  int _counter = 0; // Counter variable

  void _incrementCounter() {
    setState(() {
      _counter++; // Update counter and UI
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--; // Update counter and UI
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Counter App by Rania Zulfiqar',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Rania Zulfiqar!',
              style: TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rania! You have pressed the button this many times:',
              style: TextStyle(
                  fontSize: 16.0, color: Colors.pink, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: const TextStyle(
                  fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
              tooltip: 'Increment',
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
              tooltip: 'Decrement',
            ),
          ),
        ],
      ),
    );
  }
}
