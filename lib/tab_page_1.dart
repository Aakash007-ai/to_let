import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Startup first phase"),
          Text("Developing login and signup option for both via mobile phone"),
          Text("Dashboad screen"),
        ],
      ),
    );
  }
}
