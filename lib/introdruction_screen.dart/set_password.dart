// ignore_for_file: unused_local_variable

import 'package:ecoride/introdruction_screen.dart/login_screen.dart';
import 'package:flutter/material.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  bool obsure = true;
  bool obsure1 = true;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Set Password",
          style: TextStyle(fontSize: h * .03 / 1.3),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .03,
            ),
            TextFormField(
              obscureText: obsure,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.shield_moon),
                    onPressed: () {
                      obsure1 = !obsure1;
                      setState(() {});
                    },
                  ),
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: h * .03,
            ),
            TextFormField(
              obscureText: obsure1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.shield_moon),
                    onPressed: () {
                      obsure1 = !obsure1;
                      setState(() {});
                    },
                  ),
                  hintText: "Confirm Password",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              "At least 1 number and 1 special character",
              style: TextStyle(fontSize: h * .02 / 1.1),
            ),
            SizedBox(
              height: h * .06,
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green.shade900),
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontSize: h * .03 / 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
