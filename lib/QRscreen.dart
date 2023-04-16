import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Background.dart';
import 'QRscreen.dart';

class QRscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0.0,),
      body: Background1(
        child: SingleChildScrollView(
          child: Container(
              padding:EdgeInsets.only(top: 240,bottom: 240,left:25, right:25),
              child: Image.asset('assets/images/ira.jpg'),),
      ),
    ),
    );
  }
}