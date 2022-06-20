import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sfree/utils/mybuttons.dart';
import 'package:sfree/views/user_login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.white]
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: <Widget>[
                    _displayIcon(),
                    _displayText1(),
                    _displayNext(context)
                  ],
                ),
              ),
              // child: Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       const Icon(Icons.android, size: 200),
              //       const Text("Welcome",
              //         style: TextStyle(fontSize: 50),
              //         textAlign: TextAlign.left,
              //       ),
              //       const Text("to",
              //         style: TextStyle(fontSize: 25),
              //         textAlign: TextAlign.left,
              //       ),
              //       const Text("Cooking with the",
              //         style: TextStyle(fontSize: 25),),
              //       const Text("Homies!!",
              //         style: TextStyle(fontSize: 50),),
              //       MyButton(label: 'Get Started',
              //           onTap: () {
              //             Navigator.of(context)
              //                 .push(MaterialPageRoute(builder: (BuildContext context) {
              //               return const UserLogin();
              //             }));
              //           },
              //           height: 60,
              //           width: 250,
              //           color: Colors.purple)
              //     ],
              //   ),
              // ),
            ),
          );
        }
      ),
    );
  }

  _displayIcon(){
    return const Align(
      alignment: Alignment.center,
      child: Icon(Icons.android, size: 200),
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
    return MyButton(label: 'Get Started',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const UserLogin();
          }));
        },
        height: 60,
        width: 250,
        color: Colors.purple);
  }

}
