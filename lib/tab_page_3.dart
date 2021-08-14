import 'package:flutter/material.dart';
import 'package:to_let/OwnerSide/owner_intro.dart';
import 'package:to_let/UserSide/userintro.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Third Page"),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => UserSide())),
              child: Text("Search places")),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => OwnerSide())),
              child: Text("Upload your place"))
        ],
      ),
    );
  }
}

// class IntroPage3 extends StatelessWidget {
//   const IntroPage3({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Text("Third Page"),
//           ElevatedButton(
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) => UserSide())),
//               child: Text("Search places")),
//           ElevatedButton(
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) => OwnerSide())),
//               child: Text("Upload your place"))
//         ],
//       ),
//     );
//   }
// }
