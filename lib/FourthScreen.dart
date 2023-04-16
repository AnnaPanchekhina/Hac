import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Второе окно')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,right: 50, left: 150),
              color:Colors.white,
              child: Text('4',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.red,
                    fontSize: 25
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}