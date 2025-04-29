import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
      const MaterialApp(home: RandomNumberPage());
}

class RandomNumberPage extends StatefulWidget {
  const RandomNumberPage({super.key});

  @override
  State<RandomNumberPage> createState() => _RandomNumberPageState();
}

class _RandomNumberPageState extends State<RandomNumberPage> {
  int number = 0;

  void generate() {
    setState(() {
      number = Random().nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Random Number')),
    body: Center(
      child: Text('Number: $number', style: const TextStyle(fontSize: 24)),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: generate,
      child: const Icon(Icons.refresh),
    ),
  );
}
