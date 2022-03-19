import 'package:flutter/material.dart';

class CounterA extends StatelessWidget {
  final int counter;
  final void Function() increment;

  const CounterA({
    Key? key,
    required this.counter,
    required this.increment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            "$counter",
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          ElevatedButton(
            onPressed: increment,
            child: const Text(
              "Increment",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
