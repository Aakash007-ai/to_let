import 'package:flutter/material.dart';
import 'package:to_let/tab_page_1.dart';
import 'package:to_let/tab_page_2.dart';
import 'package:to_let/tab_page_3.dart';

class IntroApp extends StatelessWidget {
  const IntroApp({Key? key}) : super(key: key);
  // static const List<Widget> screen =[],

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: DefaultTabController(
        length: 3,
        child: Builder(
            builder: (BuildContext context) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TabBarView(
                          children: [IntroPage1(), IntroPage2(), IntroPage3()]),
                    ),
                    TabPageSelector(), //the three dots
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ElevatedButton(onPressed: () {}, child: Text("Next")),
                        ElevatedButton(
                            style:
                                ButtonStyle(alignment: Alignment.bottomRight),
                            onPressed: () {
                              final TabController? controller =
                                  DefaultTabController.of(context);
                              if (!controller!.indexIsChanging) {
                                controller.animateTo(2);
                              }
                            },
                            child: Text("Skip"))
                      ],
                    ),
                  ],
                )),
      ),
    );
  }
}
