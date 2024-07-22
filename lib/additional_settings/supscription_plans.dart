// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class SubscriptionPlan extends StatefulWidget {
  const SubscriptionPlan({super.key});

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

class _SubscriptionPlanState extends State<SubscriptionPlan> {
  final title = [
    "Standard Plan",
    "Gold Plan",
    "Premium Plan",
  ];
  final subtitle = [
    "Free",
    "100\$",
    "300\$",
  ];

  final update = [
    "Current",
    "Upgrade",
    "Upgrade",
  ];
  final color = [Colors.black, Colors.green, Colors.green];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Subscription Plan",
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: color[index]),
                      onPressed: () {},
                      child: Text(
                        update[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
