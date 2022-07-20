import 'package:flutter/material.dart';

class TitleDisplay extends StatelessWidget {
  const TitleDisplay({Key? key}) : super(key: key);

  static const IconData flatware = IconData(0xe296, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey,
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
                    Colors.grey.shade200,
                    Colors.grey.shade300,
                    Colors.grey.shade400,
                    Colors.grey.shade500,
                  ],
                  stops: const [
                    0.1,
                    0.3,
                    0.8,
                    1
                  ]
              )
          ),
          child: const Icon(flatware, size: 100,),
          // child: const Text("SFree"),
        ),
      ),
    );
  }
}
