import 'package:flutter/material.dart';

class CalculatoScreen extends StatefulWidget {
  const CalculatoScreen({super.key});

  @override
  State<CalculatoScreen> createState() => _CalculatoScreenState();
}

class _CalculatoScreenState extends State<CalculatoScreen> {
  // creating Text controllers to hold values of textfields
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double sum = 0;

  // creating a function to perform addition

  void add() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);

    sum = num2 + num2;

    // setting a setstates to update the ui

    setState(() {
      sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Center(child: Text('Calculator Content')),
    );
  }
}
