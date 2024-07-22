// ignore_for_file: unused_local_variable

import 'package:ecoride/Drawer_screen/history_screen.dart/cancelled.dart';
import 'package:ecoride/Drawer_screen/history_screen.dart/complete.dart';
import 'package:ecoride/Drawer_screen/history_screen.dart/upcoming.dart';

import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int selectedButtonIndex = 0;

  final List<Color> buttonColors = [
    Colors.green,
    Colors.green,
    Colors.green,
  ];

  final List<Widget> containers = [
    UpcomingScreen(),
    CompleteScreen(),
    CancelledScreen(),
  ];

  final buttonName = [
    "Upcoming",
    "Complete",
    "Cancelled",
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //    iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'History',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h * .08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.shade100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(3, (index) {
                              return TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButtonIndex = index;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: selectedButtonIndex == index
                                      ? buttonColors[index]
                                      : Colors.transparent,
                                ),
                                child: Text(
                                  buttonName[index],
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 10),
                        containers[selectedButtonIndex],
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
