// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //    iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'About Us',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Creating an About Us page for a car rental app involves presenting key information about the company, its mission, values, and services. Here iss a basic structure you can follow to develop an engaging',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .02,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .04,
            ),
          ],
        ),
      ),
    );
  }
}
