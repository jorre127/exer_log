import 'package:flutter/material.dart';

class LightBall extends StatelessWidget {
  final double size;
  final Color color;

  const LightBall({
    required this.size,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 100,
          ),
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 100,
            spreadRadius: 30,
          ),
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 100,
            spreadRadius: 50,
          ),
        ],
      ),
    );
  }
}
