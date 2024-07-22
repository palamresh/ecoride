// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //    iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Help And Support',
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
              'Creating a Help and Support page for your car rental app involves providing users with access to resources and contact information to assist them with any issues or questions. This can include FAQs, contact details, and links to customer support.',
              textAlign: TextAlign.justify,
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
