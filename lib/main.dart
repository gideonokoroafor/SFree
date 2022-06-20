import 'package:flutter/material.dart';
import 'package:sfree/views/user_login.dart';
import 'package:sfree/views/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Welcome());
  // runApp(const UserLogin());
}
