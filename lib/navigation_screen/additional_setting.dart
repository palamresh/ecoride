// ignore_for_file: unused_local_variable

import 'package:ecoride/additional_settings/community.dart';
import 'package:ecoride/additional_settings/emergency_assistance.dart';
import 'package:ecoride/additional_settings/icon_impact.dart';
import 'package:ecoride/additional_settings/supscription_plans.dart';
import 'package:flutter/material.dart';

import '../additional_settings/driver_training.dart';

class AdditionalSettings extends StatefulWidget {
  const AdditionalSettings({super.key});

  @override
  State<AdditionalSettings> createState() => _AdditionalSettingsState();
}

class _AdditionalSettingsState extends State<AdditionalSettings> {
  final title = [
    "Subscription Plans",
    "Eco Impact",
    "Emergency Assistance",
    "Community",
    "Driver Training",
  ];

  final routes = [
    SubscriptionPlan(),
    EcoImpact(),
    EmergencyAssistance(),
    Community(),
    DriverTraining(),
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Additional Settings",
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
                    border: Border.all(
                        color: const Color.fromARGB(255, 44, 94, 70))),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => routes[index]));
                  },
                  title: Center(
                    child: Text(
                      title[index],
                      style: TextStyle(
                          //  color: Colors.orange,
                          fontSize: h * .02,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
