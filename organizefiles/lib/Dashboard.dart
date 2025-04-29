import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Dashboard'),
      backgroundColor: Colors.deepPurple,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome to the Dashboard!',
            style: TextStyle(fontSize: 24, letterSpacing: 2.0),
          ),
          const SizedBox(height: 20),
          const Text(
            'Explore Flutter App',
            style: TextStyle(fontSize: 20, letterSpacing: 1.5),
          ),
        ],
      ),
    ),
  );
}
