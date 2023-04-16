import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacaton/LicnCab.dart';
import 'package:hacaton/SohrVizit.dart';
import 'package:hacaton/visitka2.dart';
import 'package:hacaton/visitka3.dart';
import 'BackgroundSohr.dart';
import 'QR.dart';
import 'visitka1.dart';


class SohrVizit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSohr(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50, right: 210, left: 30),
                child: SvgPicture.asset('assets/images/Vis.svg'),
              ),

              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 5, left: 14),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
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
                      padding: EdgeInsets.only(top: 3, right: 14, left: 5),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                  'assets/images/nastyaphoto.jpg',
                              width: 160,),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 18, right: 5, left: 34),
                              child: SvgPicture.asset('assets/images/Pen.svg'),
                              width: 50,
                              height:50,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 75, right: 8, left: 8),
                              child: SvgPicture.asset(
                                  'assets/images/redact.svg'),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LicnCab()));
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
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5, right: 1, left: 24, bottom: 190),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: SvgPicture.asset(
                                'assets/images/Cnopcaglv.svg',),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 18, right: 0, left: 30),
                              child: SvgPicture.asset(
                                'assets/images/eye.svg',),
                              width: 70,
                              height: 70,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 75, right: 20, left: 18),
                              child: SvgPicture.asset(
                                'assets/images/see.svg',),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SohrVizit()));
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
                      padding: EdgeInsets.only(top: 5, right: 0, left:0,bottom: 190),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: SvgPicture.asset(
                                  'assets/images/Cnopcaglv.svg'),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 18, right: 10, left: 35),
                              child: SvgPicture.asset('assets/images/Map.svg'),
                              width: 75,
                              height: 75,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 75, right: 5, left: 5),
                              child: SvgPicture.asset('assets/images/near.svg'),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => QR()));
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
                      padding: EdgeInsets.only(top: 5, right: 2, left: 2,bottom: 190),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: SvgPicture.asset(
                                  'assets/images/Cnopcaglv.svg'),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 18, right: 5, left: 32),
                              child: SvgPicture.asset('assets/images/qest.svg'),
                              width: 70,
                              height: 70,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 75, right: 15, left: 15),
                              child: SvgPicture.asset(
                                  'assets/images/tp.svg'),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => QR()));
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
        ),
      ),
    );
  }
}
