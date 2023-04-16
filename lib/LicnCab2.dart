import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Background.dart';

class LicnCab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
                  child: Image.asset('assets/images/Anton1.jpg'),
                  width: 430,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ) //BoxDecoration //BoxDecoration
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 80, right: 5, bottom: 15),
                      child: SvgPicture.asset('assets/images/AnIm.svg'),
                      width: 300,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: 5, left: 5, right: 5, bottom: 15),
                        child: SvgPicture.asset('assets/images/Pen2.svg'),
                        width: 50,
                        height: 50,
                      ),
          ],
                    ),
                    ),
                  ],
                ),
              ),
          ),
    );
  }
}