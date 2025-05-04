import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Stack Demo', home: const StackExample());
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack and Positioned Widget'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(width: 300, height: 300, color: Colors.blue[100]),
            const Positioned(
              top: 30,
              left: 30,
              child: Icon(Icons.star, size: 50, color: Colors.amber),
            ),
            const Positioned(
              bottom: 30,
              right: 30,
              child: Icon(Icons.favorite, size: 50, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
