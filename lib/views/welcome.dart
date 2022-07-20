import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sfree/utils/mybuttons.dart';
import 'package:sfree/views/login_page.dart';
import 'package:sfree/views/title_display.dart';
import 'package:sfree/views/user_login.dart';

import '../utils/curve_clippers.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Container(
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _welcomeImage(context),
                  _displayNext(context)
                ],
              ),
            ),
          );
        }
      ),
    );
  }

  _displayText1(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Center(
        child: Column(
          children: const [
            Text("Welcome",
              style: TextStyle(fontSize: 50),
              // textAlign: TextAlign.left,
            ),
            Text("To",
              style: TextStyle(fontSize: 50),
              // textAlign: TextAlign.left,
            ),
            Text("Cooking with the",
              style: TextStyle(fontSize: 25),),
            Text("Homies!!",
              style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
  
  _displayNext(context){
    return MyButton(label: 'Get Started!',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const TitleDisplay();
          }));
        },
        height: 60,
        width: 250,
        color: Colors.transparent);
  }

  _welcomeImage(contex) {
    Size size = MediaQuery.of(contex).size;
    const double appPadding = 20.0;
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        width: size.width,
        color: Colors.blueGrey.withOpacity(0.8),
        child: const Center(
          child: Image(
            image: AssetImage('assets/images/sfree3.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}
