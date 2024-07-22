// ignore_for_file: unused_local_variable

import 'package:ecoride/introdruction_screen.dart/create_account.dart';
import 'package:ecoride/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsure1 = true;
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
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "Email or Phone Number",
                  border: OutlineInputBorder()),
            ),
            TextFormField(
              obscureText: obsure1,
              keyboardType: TextInputType.visiblePassword,
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
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: h * .03 / 1.5,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                    //  textAlign: TextAlign.right,
                  ),
                )),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationScreen()),
                      (Routes) => false);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.green.shade900),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: h * .03 / 1.2,
                      color: Colors.white,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(fontSize: h * .02, color: Colors.black)),
                  TextSpan(
                      text: "Sign Up ",
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
