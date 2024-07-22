// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = screenWidth * 0.05;
    final fontSize = screenHeight * 0.04;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Privacy Policy',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: const Column(
          children: [
            Text("Privacy Policy for Ride share",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(
              '''
If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.
This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in rideshare. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.''',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
