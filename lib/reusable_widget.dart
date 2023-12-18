import 'package:flutter/material.dart';

class reusable_widget extends StatelessWidget {
  const reusable_widget({required this.color, this.cardchild});

  final Color color;
  final Widget? cardchild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: cardchild,
      ),
    );
  }
}
