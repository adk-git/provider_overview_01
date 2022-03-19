import 'package:flutter/material.dart';
import 'package:provider_overview_01/ui/counter2.dart';

import 'sibling.dart';

class Middle extends StatelessWidget {
  final int counter;

  const Middle({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CounterB(counter: counter),
          const SizedBox(width: 20.0),
          const Sibling(),
        ],
      ),
    );
  }
}