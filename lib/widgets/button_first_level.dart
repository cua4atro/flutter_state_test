import 'package:flutter/material.dart';
import 'button_widget.dart';

class ButtonFirstLevel extends StatelessWidget {
  const ButtonFirstLevel({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[400],
      child: ButtonWidget(
        onPressed: onPressed,
      ),
    );
  }
}
