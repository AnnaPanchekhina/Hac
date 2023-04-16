import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Background.dart';
import 'Background3.dart';

class Visitka3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0.0,),
    body: Background3(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/images/background.svg'),
            Container(
                padding: EdgeInsets.only(top: 49, left: 15, right: 15,bottom: 5),
                child: Image.asset('assets/images/foto3.jpg'),
                width: 430,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                )//BoxDecoration //BoxDecoration
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 5),
              child: SvgPicture.asset('assets/images/andrey.svg'),
              width: 456,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 5),
              child: SvgPicture.asset('assets/images/iratext1.svg'),
              width: 495,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 5),
              child: SvgPicture.asset('assets/images/dostig.svg'),
              width: 495,
            ),
            Container(
              child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 15, right: 7, bottom: 5),
                      child: SvgPicture.asset('assets/images/irasocial.svg'),
                      width: 195,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 7, right: 15, bottom: 5),
                      child: SvgPicture.asset('assets/images/port3.svg'),
                      width: 195,
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 26),
              child: SvgPicture.asset('assets/images/add3.svg'),
              width: 495,
            )
          ],
        ),
      ),
    ),
    );
  }
}