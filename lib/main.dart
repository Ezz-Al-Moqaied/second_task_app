import 'package:flutter/material.dart';
import 'package:second_task_app/personal_screen.dart';
import 'package:second_task_app/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  List<Widget> screens = [
    const PersonalScreen(),
    const SearchScreen(),
    const PersonalScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: screens[index],
          bottomNavigationBar: Container(
              height: 85,
              margin: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.black.withOpacity(0.05)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 30,
                            color: index == 0
                                ? Colors.indigo.withOpacity(0.9)
                                : Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          index == 0
                              ? Container(
                                  width: 6,
                                  height: 6,
                                  color: Colors.indigo.withOpacity(0.9),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.search_outlined,
                            size: 30,
                            color: index == 1
                                ? Colors.indigo.withOpacity(0.9)
                                : Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          index == 1
                              ? Container(
                                  width: 6,
                                  height: 6,
                                  color: Colors.indigo.withOpacity(0.9),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            size: 30,
                            color: index == 2
                                ? Colors.indigo.withOpacity(0.9)
                                : Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          index == 2
                              ? Container(
                                  width: 6,
                                  height: 6,
                                  color: Colors.indigo.withOpacity(0.9),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
