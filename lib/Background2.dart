import 'package:flutter/material.dart';

class Background2 extends StatelessWidget {
  final Widget child;
  const Background2({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fon2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}