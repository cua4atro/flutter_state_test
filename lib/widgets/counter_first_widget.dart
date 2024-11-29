import 'package:flutter/material.dart';

import 'counter_widget.dart';

class CounterFirstWidget extends StatefulWidget {
  const CounterFirstWidget({Key? key}) : super(key: key);

  @override
  State<CounterFirstWidget> createState() => CounterFirstWidgetState();
}

class CounterFirstWidgetState extends State<CounterFirstWidget> {
  int _count = 28;

  void incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent[200],
      child: CounterWidget(
        count: _count,
      ),
    );
  }
}
