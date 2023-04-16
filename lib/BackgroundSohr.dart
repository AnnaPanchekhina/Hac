import 'package:flutter/material.dart';

class BackgroundSohr extends StatelessWidget {
  final Widget child;
  const BackgroundSohr({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
      ),
      child: child,
    );
  }
}