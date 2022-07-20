// ignore_for_file: implementation_imports

import 'package:flutter/src/widgets/framework.dart';
import 'package:sfree/authentication/sign_up.dart';
import 'package:sfree/views/login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // show login page
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showSignUpPage: toggleScreen,);
    } else {
      return SignUpPage(showLoginPage: toggleScreen,);
    }
  }
}
