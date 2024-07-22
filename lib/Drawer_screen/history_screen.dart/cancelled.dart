// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({super.key});

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  final title = ["Azaj R ", "Meet A", "Azaj B ", "Meet D"];
  final subtitle = ["BMW", "mercedes-Benz", "Ferrari", "Range Rover"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        height: h / 1,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 4,
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
                        "Cancel",
                        style: TextStyle(fontSize: h * .02, color: Colors.red),
                      )),
                ),
              );
            }),
      ),
    );
  }
}
