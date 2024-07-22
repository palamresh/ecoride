// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class ReferalScreen extends StatefulWidget {
  const ReferalScreen({super.key});

  @override
  State<ReferalScreen> createState() => _ReferalScreenState();
}

class _ReferalScreenState extends State<ReferalScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //    iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Referal',
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
              'Referal a friend and Earn \$20',
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
            TextFormField(
              initialValue: "RkMUmded",
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.copy),
                  // ignore: prefer_const_constructors
                  border: OutlineInputBorder(),
                  hintMaxLines: 5),
            ),
            SizedBox(
              height: h * .04,
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.1,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text(
                    "Invite",
                    style: TextStyle(fontSize: h * .02, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
