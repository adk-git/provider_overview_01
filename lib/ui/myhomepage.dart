import 'package:flutter/material.dart';
import 'counter1.dart';
import 'middle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Counter",
                style: TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 20),
            CounterA(
              counter: counter,
              increment: increment,
            ),
            const SizedBox(height: 20),
            Middle(counter: counter),
          ],
        ),
      ),
    );
  }
}
