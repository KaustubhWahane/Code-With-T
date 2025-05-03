import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Drawer Demo')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Akagami No Shanks'),
              accountEmail: Text('haoshokunohaki@emperor.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Shanks.png'),
              ),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            const ListTile(leading: Icon(Icons.home), title: Text('Home')),
            const ListTile(leading: Icon(Icons.shop), title: Text('Shop')),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('Labels'),
            ),
            const ListTile(
              leading: Icon(Icons.label, color: Colors.red),
              title: Text('Red'),
            ),
            const ListTile(
              leading: Icon(Icons.label, color: Colors.green),
              title: Text('Green'),
            ),
            const ListTile(
              leading: Icon(Icons.label, color: Colors.blue),
              title: Text('Blue'),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Drawer with User Profile and Labels')),
    );
  }
}
