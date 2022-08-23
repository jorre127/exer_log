import 'package:exerlog/src/widgets/background/background.dart';
import 'package:flutter/material.dart';

class SimpleScreen extends StatelessWidget {
  final Widget child;

  const SimpleScreen({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
