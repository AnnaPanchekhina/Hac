import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacaton/LicnCab.dart';
import 'package:hacaton/SohrVizit.dart';
import 'package:hacaton/visitka2.dart';
import 'package:hacaton/visitka3.dart';
import 'BackgroundSohr.dart';
import 'Proryd.dart';
import 'QR.dart';
import 'QRscreen.dart';
import 'visitka1.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CARTE',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'CARTE'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSohr(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50, right: 210, left: 30),
                child: SvgPicture.asset('assets/images/CARTE.svg'),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: SvgPicture.asset('assets/images/FonVisa.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 30,left:13 ,right: 3),
                        child: SvgPicture.asset('assets/images/111.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 77,left:13 ,right: 3),
                        child: SvgPicture.asset('assets/images/222.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 130,left: 13,right: 3),
                        child: SvgPicture.asset('assets/images/333.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 130,left: 23,right: 3),
                        child: SvgPicture.asset('assets/images/444.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 140,left: 13,right:3 ),
                        child: SvgPicture.asset('assets/images/555.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 140,left: 23,right: 3),
                        child: SvgPicture.asset('assets/images/666.svg'),),
                      Container(
                        padding: EdgeInsets.only(top: 23,left: 200,right: 30),
                        child: SvgPicture.asset('assets/images/888.svg'),),
                    ],
                  ),
                  ),

              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 70, right: 2, left: 24),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: SvgPicture.asset(
                                'assets/images/Cnopcaglv.svg',),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 18, right: 10, left: 30),
                              child: SvgPicture.asset(
                                'assets/images/treygol.svg',),
                              width: 70,
                              height: 70,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 75, right: 20, left: 20),
                              child: SvgPicture.asset(
                                'assets/images/send.svg',),
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
                      padding: EdgeInsets.only(top: 70, right: 2, left: 2),
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
                              child: SvgPicture.asset('assets/images/qr.svg'),
                              width: 75,
                              height: 75,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 75, right: 14, left: 14),
                              child: SvgPicture.asset('assets/images/scan.svg'),
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
                      padding: EdgeInsets.only(top: 70, right: 2, left: 2),
                      child: ElevatedButton(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: SvgPicture.asset(
                                  'assets/images/Cnopcaglv.svg'),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 18, right: 5, left: 34),
                              child: SvgPicture.asset('assets/images/Pen.svg'),
                              width: 70,
                              height: 70,
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
                              MaterialPageRoute(builder: (context) => ProRyd()));
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
                      padding: EdgeInsets.only(top: 5, right: 2, left: 11,bottom: 190),
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
