import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Background.dart';

class Visitka1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0.0,),
      body: Background1(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset('assets/images/background.svg'),
                Container(
                  padding: EdgeInsets.only(top: 49, left: 15, right: 15),
                  child: Image.asset('assets/images/madam1.jpg'),
                  width: 430,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                    )//BoxDecoration //BoxDecoration
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 40, right: 40, bottom: 5),
                  child: SvgPicture.asset('assets/images/ira.svg'),
                  width: 540,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 5),
                  child: SvgPicture.asset('assets/images/iratext1.svg'),
                  width: 495,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 5),
                  child: SvgPicture.asset('assets/images/dostig.svg'),
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
                      child: SvgPicture.asset('assets/images/portfolio.svg'),
                      width: 195,
                      ),
              ]),
        ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 20),
                  child: SvgPicture.asset('assets/images/add1.svg'),
                  width: 495,
                )
          ],
      ),
        ),
      ),
    );
  }
}