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
            ],
          ),
        ),
      ),
    );
  }
}






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geeks For Geeks Passing Data',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PassDataDemo(),
    );
  }
}

class PassDataDemo extends StatefulWidget {
  const PassDataDemo({Key? key}) : super(key: key);
  @override
  State<PassDataDemo> createState() => _PassDataDemoState();
}

class _PassDataDemoState extends State<PassDataDemo> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geeks For Geeks"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: 'Enter The Data',
                  border: InputBorder.none,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Step 1 <-- SEE HERE
            ElevatedButton(
              onPressed: () {
                // Step 3 <-- SEE HERE
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(title: myController.text),
                  ),
                );
              },
              child: const Text(
                'Pass Data To Next Screen',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DetailScreen extends StatefulWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.title}) : super(key: key);
  // Step 2 <-- SEE HERE
  final String title;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // Step 4 <-- SEE HERE
            Text(
              '${widget.title}',
              style: TextStyle(fontSize: 54),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Write New Text"),
            )
          ],
        ),
      ),
    );
  }
}