// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class EmergencyAssistance extends StatefulWidget {
  const EmergencyAssistance({super.key});

  @override
  State<EmergencyAssistance> createState() => _EmergencyAssistanceState();
}

class _EmergencyAssistanceState extends State<EmergencyAssistance> {
  final title = [
    "Home",
    "Police",
    "Ambulance",
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Emergency Assistance",
          style:
              TextStyle(fontSize: h * .03 / 1.2, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all()),
                child: ListTile(
                    title: Text(
                      title[index],
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: h * .02,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.green),
                      onPressed: () {},
                      child: Text(
                        "Call",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
