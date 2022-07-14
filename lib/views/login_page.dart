// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, implementation_imports, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sfree/views/home_page.dart';

import '../utils/curve_clippers.dart';
import '../utils/mybuttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _backgroundImage(),
              // SizedBox(
              //   height: 0,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Welcome,',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 52,
                    color: Colors.black.withOpacity(0.8)
                    // fontWeight: FontWeight.bold
                  ),
                  // style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Sign in to continue!',
                  style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade400
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _inputEmail(),
              SizedBox(
                height: 10,
              ),
              _inputPassword(),
              // SizedBox(
              //   height: 0,
              // ),
              // _forgotPassword(),
              SizedBox(
                height: 10,
              ),
              _logInButton(context),
              SizedBox(
                height: 20,
              ),
              _signUpButton(context),
              SizedBox(
                height: 0,
              ),
              _forgotPassword(),
            ]),
      ),
    );
  }

  _inputEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextField(
              decoration:
                  InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email')),
        ),
      ),
    );
  }

  _inputPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Password')),
        ),
      ),
    );
  }

  _logInButton(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: MyButton(
          label: 'Sign In',
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const HomePage();
            }));
          },
          height: 50,
          width: 400,
          color: Colors.blueGrey.withOpacity(0.8)),
    );
  }

  _signUpButton(context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Not a member? ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        'Register now',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    ]);
  }

  _backgroundImage(){
    Size size = MediaQuery.of(context).size;
    const double appPadding = 20.0;
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        width: size.width,
        color: Colors.blueGrey.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: appPadding / 2, vertical: appPadding * 3),
          child: Center(
            child: Image(
              image: AssetImage('assets/images/sfree3.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  _forgotPassword() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: TextButton(
          child: const Text(
            "Forgot Password?",
          ),
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return ForgotPassword();
            // }));
          },
        ),
      )
    );
  }

}
