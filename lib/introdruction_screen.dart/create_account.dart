// ignore_for_file: unused_local_variable

import 'package:ecoride/introdruction_screen.dart/login_screen.dart';
import 'package:ecoride/introdruction_screen.dart/set_password.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "EcoRide",
          style: TextStyle(
              color: Colors.green, fontSize: h * .04, letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Phone", border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "By Sign up  you agree to the ",
                    style: TextStyle(fontSize: h * .02, color: Colors.black)),
                TextSpan(
                    text: "Term of Service ",
                    style: TextStyle(fontSize: h * .02, color: Colors.green)),
                TextSpan(
                    text: "and ",
                    style: TextStyle(fontSize: h * .02, color: Colors.black)),
                TextSpan(
                    text: "Privacy Policy ",
                    style: TextStyle(fontSize: h * .02, color: Colors.green))
              ])),
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SetPassword()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green.shade900),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: h * .03 / 1.2,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: SignInButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                Buttons.google,
                text: "Sign up with Google",
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: SignInButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                Buttons.facebook,
                text: "Sign up with Facebook",
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: SignInButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                Buttons.apple,
                text: "Sign up with Apple",
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(fontSize: h * .02, color: Colors.black)),
                  TextSpan(
                      text: "Login ",
                      style: TextStyle(fontSize: h * .02, color: Colors.green))
                ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
