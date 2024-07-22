// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  final title = [
    "Azaj R ",
    "Meet A",
    "Azaj B ",
    "Meet D",
    "Azaj R ",
    "Meet A",
    "Azaj B ",
  ];
  final subtitle = [
    "BMW",
    "mercedes-Benz",
    "Ferrari",
    "Range Rover",
    "BMW",
    "mercedes-Benz",
    "Ferrari",
  ];

  final trainingtitle = [
    "Today  at 9:20 am",
    "Today  at 10:20 am",
    "Today  at 11:20 am",
    "Today  at 2:30 pm",
    "Today  at 9:20 am",
    "Today  at 9:30 pm",
    "Today  at 8:20 am"
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        height: h / 1,
        width: double.infinity,
        child: ListView.builder(
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.greenAccent)),
                  child: ListTile(
                      title: Text(
                        title[index],
                        style: TextStyle(
                            fontSize: h * .02, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(fontSize: h * .02 / 1.1),
                      ),
                      trailing: Text(
                        trainingtitle[index],
                        style:
                            TextStyle(fontSize: h * .02, color: Colors.black),
                      )),
                ),
              );
            }),
      ),
    );
  }
}
