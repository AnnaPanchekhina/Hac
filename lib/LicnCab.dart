import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacaton/LicnCab2.dart';
import 'Background.dart';

class LicnCab extends StatelessWidget {
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
                  child: Image.asset('assets/images/Anton1.jpg'),
                  width: 430,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  )//BoxDecoration //BoxDecoration
              ),
              Container(
                child: Row(
              children: [
              Container(
                padding: EdgeInsets.only(top: 3, left: 80, right: 5, bottom: 15),
                child: Stack(
                  children: <Widget>[
                    Container( 
                      child: SvgPicture.asset('assets/images/Plash.svg'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 35, right: 35),
                      child: Text('Антон Самойлов',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
    ),
          ],
        ),
              ),
                    Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/images/Pen2.svg',height: 25, width: 25,),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.transparent),
                          elevation: MaterialStateProperty.all(0.0),
                          padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        ),
                        )
                    ),
                      ],
                    ),
                  ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 5),
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
                        child: SvgPicture.asset('assets/images/kontact.svg'),
                        width: 195,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 7, right: 15, bottom: 5),
                        child: SvgPicture.asset('assets/images/ssait.svg'),
                        width: 195,
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 25),
                child: SvgPicture.asset('assets/images/add2.svg'),
                width: 495,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



