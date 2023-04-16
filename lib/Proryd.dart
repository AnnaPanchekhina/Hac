import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacaton/LicnCab.dart';
import 'package:hacaton/SohrVizit.dart';
import 'package:hacaton/visitka2.dart';
import 'package:hacaton/visitka3.dart';
import 'BackgroundSohr.dart';
import 'QR.dart';
import 'visitka1.dart';


class ProRyd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0.0,),
      body: BackgroundSohr(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40, right: 40, left: 60),
                child: Text('Профессионалы рядом',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 26),),
              ),

              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 5, left: 14, bottom: 530),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child:
                              Image.asset(
                                'assets/images/madam1.jpg',
                                width: 160,),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 100, right: 10, left: 10),
                              child: SvgPicture.asset(
                                'assets/images/IrinaS.svg',),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 115, right: 20, left: 10),
                              child: SvgPicture.asset(
                                'assets/images/Designer.svg',),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Visitka1()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors
                              .transparent),
                          elevation: MaterialStateProperty.all(0.0),
                          padding: MaterialStateProperty.all(EdgeInsets.all(7)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 1, left: 10, bottom: 530),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/images/Andre.jpg',),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 120, right: 5, left: 10),
                              child: SvgPicture.asset(
                                'assets/images/AndreIm.svg',),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 140, right: 20, left: 10, ),
                              child: SvgPicture.asset(
                                'assets/images/Prod.svg',),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Visitka3()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors
                              .transparent),
                          elevation: MaterialStateProperty.all(0.0),
                          padding: MaterialStateProperty.all(EdgeInsets.all(7)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    )
    )
    );
}
}
