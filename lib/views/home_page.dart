import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
            "Welcome!!!!"
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return WillPopScope(
  //     onWillPop:() async => false,
  //     child: const Scaffold(
  //       body: Center(
  //         child: Text(
  //           "Welcome!!!!"
  //         ),
  //       ),
  //     ),
  //   );
  // }

}
