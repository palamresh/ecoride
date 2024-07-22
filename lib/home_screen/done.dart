// ignore_for_file: unused_local_variable

import 'package:ecoride/home_screen/payment_method.dart';
import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                'https://tse2.mm.bing.net/th?id=OIP.qeaT61LglCj3zRnr_gvFWwHaHa&pid=Api&P=0&h=220'),
            SizedBox(
              height: h * .03,
            ),
            Text(
              "Thank You",
              style: TextStyle(fontSize: h * .05),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              "Your booking has been place a sent to meet a.",
              style: TextStyle(fontSize: h * .03),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: h * .2,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: SizedBox(
                height: h * .1 / 1.3,
                width: w / 1.2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentMethod()));
                  },
                  child: Text(
                    "Done",
                    style:
                        TextStyle(fontSize: h * .03 / 1.4, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
