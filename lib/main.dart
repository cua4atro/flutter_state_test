import 'package:flutter/material.dart';
import 'widgets/button_first_level.dart';
import 'widgets/counter_first_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GlobalKey<CounterFirstWidgetState> _counterkey =
      GlobalKey<CounterFirstWidgetState>();

  void incrementCount() {
    _counterkey.currentState?.incrementCount();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          title: Text('States'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonFirstLevel(
              onPressed: () {
                incrementCount();
              },
            ),
            CounterFirstWidget(key: _counterkey),
          ],
        ),
      ),
    );
  }
}
