import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sfree/views/title_display.dart';
import '../utils/mybuttons.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("SFree"),
            centerTitle: true,
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.black]
              )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const TitleDisplay(),
                  _createSignUpLogo(),
                  _createTextFields(),
                  _createLogInButton(context),
                  _createForgotPasswordButton(context),
                  _createSignUpButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _createSignUpLogo() {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: const Text('Log in', style: TextStyle(fontSize: 32)));
  }

  _createTextFields() {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: TextField(
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(221, 75, 75, 75), width: 2.0),
                  ),
                  labelText: 'Please enter your email!',
                  filled: true,
                  fillColor: Colors.transparent),
              onChanged: (String? email) {
                setState(() {
                  // _userEmail = email!;
                });
              },
            )),
        Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: TextField(
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
              obscureText: true,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pinkAccent, width: 3.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(221, 75, 75, 75), width: 2.0)),
                labelText: 'Password',
                filled: true,
                fillColor: Colors.transparent,
              ),
              onChanged: (String? password) {
                setState(() {
                  // _userPass = password!;
                });
              },
            ))
      ],
    );
  }

  _createLogInButton(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: MyButton(
            label: 'Log In!',
            width: 120,
            height: 50,
            color: Colors.pinkAccent,
            onTap: () {
              // _onSignIn(context);
            }));
  }

  _createSignUpButton(BuildContext context) {
    return TextButton(
      child: const Text("Don't have an account? Sign up here!"),
      onPressed: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (BuildContext context) {
        //   return SignIn();
        // }));
      },
    );
  }

  _createForgotPasswordButton(BuildContext context) {
    return TextButton(
      child: const Text("Forgot Password?"),
      onPressed: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (BuildContext context) {
        //   return ForgotPassword();
        // }));
      },
    );
  }

}
