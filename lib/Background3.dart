import 'package:flutter/material.dart';

class Background3 extends StatelessWidget {
  final Widget child;
  const Background3({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fonc3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}