// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  final title = [
    "15% off",
    "5% off",
    "10% off",
    "5% off",
    "15% off",
  ];
  final subtitle = [
    "Black Friday",
    "Christmas",
    "Happy New Year",
    "July Month",
    "Extra",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Offer",
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
                    subtitle: Text(
                      subtitle[index],
                      style: TextStyle(fontSize: h * .02 / 1.1),
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {},
                      child: Text(
                        "Collect",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
