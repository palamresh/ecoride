// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class ComplainScreen extends StatefulWidget {
  const ComplainScreen({super.key});

  @override
  State<ComplainScreen> createState() => _ComplainScreenState();
}

class _ComplainScreenState extends State<ComplainScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //    iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Complain',
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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: ListTile(
                title: Text(
                  'Vehicle not clean',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: h * .02,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: h * .04,
            ),
            TextFormField(
              maxLength: 500,
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: "Write your complain here",
                  border: OutlineInputBorder(),
                  hintMaxLines: 5),
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.1,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: h * .02, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
