import 'package:flutter/material.dart';

class CounterB extends StatelessWidget {
  final int counter;

  const CounterB({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      padding: const EdgeInsets.all(10.0),
      child: Text(
        "$counter",
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
