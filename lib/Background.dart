import 'package:flutter/material.dart';

class Background1 extends StatelessWidget {
  final Widget child;
  const Background1({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fon.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}