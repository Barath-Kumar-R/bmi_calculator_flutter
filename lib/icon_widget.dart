import 'package:flutter/material.dart';

class icon_design extends StatelessWidget {
  icon_design({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 120,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 30),
        )
      ],
    );
  }
}
