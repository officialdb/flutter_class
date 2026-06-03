import 'package:flutter/material.dart';
import 'package:flutter_class/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter skillup',
          style: TextStyle(backgroundColor: Colors.red),
        ),
      ),
      body: ProfileScreen(),
    );
  }
}
