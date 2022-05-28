import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleDisplay extends StatelessWidget {
  const TitleDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.transparent,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),

            BoxShadow(
              color: Colors.black45,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink.shade500,
                  Colors.pink.shade600,
                  Colors.pink.shade700,
                  Colors.pink.shade800,
                  Colors.pink.shade500,
                ],
                stops: const [
                  0.1,
                  0.2,
                  0.3,
                  0.8,
                  1
                ]
            )
        ),
        child: Icon(Icons.cookie, size: 200, color: Colors.pinkAccent[800]),
        // child: const Text("SFree"),
      ),
    );
  }
}
