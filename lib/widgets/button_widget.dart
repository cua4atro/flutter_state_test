import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Colors.blue[300],
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
