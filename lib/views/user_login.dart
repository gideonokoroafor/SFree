import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sfree/views/title_display.dart';
import '../utils/mybuttons.dart';
import 'home_page.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool _rememberMe = false;
  static const IconData flatware = IconData(0xe296, fontFamily: 'MaterialIcons');
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          // appBar: AppBar(
          //   title: const Text("App"),
          // ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.black26,
            child: _signUpButton(context),
            elevation: 0,
          ),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.white]
                )
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Icon(flatware, size: 100,),
                      const SizedBox(height: 10.0),
                      // const Text("Sign In",
                      //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
                      // ),
                      _createLogin(),
                      _rememberMeCheckBox(),
                      _logInButton(context),
                      // _alternateLogIn(),
                      // _signUpButton(context)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _createLogin(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text("Email"),
          const SizedBox(height: 10.0),
          TextField(
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black38, width: 3.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(221, 75, 75, 75), width: 2.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.email_rounded, color: Colors.black38,),
                hintText: 'Email!!!',
                filled: true,
                fillColor: Colors.transparent),
            onChanged: (String? email) {
              setState(() {
                // _userEmail = email!;
              });
            },
          ),
          const SizedBox(height: 10.0),
          // const Text("Password"),
          const SizedBox(height: 10.0),
          TextField(
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                      color: Color.fromARGB(221, 75, 75, 75), width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: const Icon(Icons.lock_outline, color: Colors.black38,),
              hintText: 'Password',
              filled: true,
              fillColor: Colors.transparent,
            ),
            onChanged: (String? password) {
              setState(() {
                // _userPass = password!;
              });
            },
          ),
        ],
      ),
    );
  }

  _forgotPassword(){
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: TextButton(
          child: const Text("Forgot Password?",),
          onPressed: () {
            print("pressed");
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return ForgotPassword();
            // }));
          },
        ));
  }
  
  _rememberMeCheckBox(){
    return Row(
      children: <Widget>[
        Checkbox(
            value: _rememberMe,
            activeColor: Colors.white,
            checkColor: Colors.lightBlue,
            onChanged: (value) {setState(() {
              _rememberMe = value!;
            });
        }),
        const SizedBox(width: 5.0),
        const Text("Remember me",),
        const SizedBox(width: 83.0),
        _forgotPassword()
      ],
    );
  }

  _logInButton(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: MyButton(
            label: 'Log In!',
            width: 250,
            height: 50,
            color: Colors.black45,
            onTap: () {
              // _onSignIn(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const HomePage();
              }));
            }));
  }

  _alternateLogIn(){
    return Column(
      children: <Widget>[
        const SizedBox(height: 10.0),
        const Text("- OR -"),
        const SizedBox(height: 10.0),
        const Text("Sign in with"),
        const SizedBox(height: 10.0),
        SignInButton(
          Buttons.GoogleDark,
          // mini: true,
          onPressed: () {},
        ),
        SignInButton(
          Buttons.GitHub,
          // mini: true,
          onPressed: () {},
        ),
        SignInButton(
          Buttons.AppleDark,
          // mini: true,
          onPressed: () {},
        ),
      ],
    );
  }

  _signUpButton(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10,),
        child: TextButton(
          child: const Text("Don't have an account? Sign up!",
              style: TextStyle(color: Colors.black)),
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return SignIn();
            // }));
          },
        ));
  }


}
