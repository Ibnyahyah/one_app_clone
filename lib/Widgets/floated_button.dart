import 'package:flutter/material.dart';

class FLoatedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final handleClick;

  const FLoatedButton(this.text, this.icon, this.handleClick);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () => handleClick(context),
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            size: 30,
            color: Colors.red,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(text),
        ),
      ],
    );
  }
}
