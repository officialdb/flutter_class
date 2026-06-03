import 'package:flutter/material.dart';
import 'package:flutter_class/widgets/custom_btn.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreentState();
}

class _CounterScreentState extends State<CounterScreen> {
  int counter = 0;

  // creating the methods

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void restCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 102, 206),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            // Creating the buttons
            // create a container to perfom actions
            CustomBtn(
              onPressed: increaseCounter,
              buttonName: "Increase counter",
              buttonColor: Colors.green,
            ),
            SizedBox(height: 20),

            CustomBtn(
              onPressed: decreaseCounter,
              buttonName: "decrease counter",
              buttonColor: Colors.blue,
            ),
            SizedBox(height: 20),

            CustomBtn(
              onPressed: restCounter,
              buttonName: "Reset counter",
              buttonColor: Colors.red,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
