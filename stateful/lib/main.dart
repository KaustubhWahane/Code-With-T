import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const LikeExample());
  }
}

class LikeExample extends StatefulWidget {
  const LikeExample({super.key});

  @override
  State<LikeExample> createState() => _LikeExampleState();
}

class _LikeExampleState extends State<LikeExample> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Like Example'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'One Piece',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 30,
              ),
              onPressed: toggleLike,
            ),
            Text(
              isLiked ? 'Liked' : 'Not Liked',
              style: TextStyle(
                fontSize: 16,
                color: isLiked ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
