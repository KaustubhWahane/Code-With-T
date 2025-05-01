import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: Image(image: AssetImage('assets/Shanks.png')),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image(image: AssetImage('assets/Shanks.png')),
                  ),
                  Expanded(
                    child: Image(image: AssetImage('assets/Shanks.png')),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, size: 30, color: Colors.amber),
                  Icon(Icons.star, size: 30, color: Colors.amber),
                  Icon(Icons.star, size: 30, color: Colors.amber),
                  Icon(Icons.star_border, size: 30),
                  Icon(Icons.star_border, size: 30),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.home, size: 40),
                  Icon(Icons.favorite, size: 40),
                  Icon(Icons.settings, size: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
