// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  final title = ["Azaj R ", "Meet A", "Azaj B ", "Meet D"];
  final subtitle = ["BMW", "mercedes-Benz", "Ferrari", "Range Rover"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Container(
      height: h / 2,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                      "Done",
                      style: TextStyle(fontSize: h * .02, color: Colors.green),
                    )),
              ),
            );
          }),
    );
  }
}
