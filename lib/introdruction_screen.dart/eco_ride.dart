import 'package:ecoride/introdruction_screen.dart/create_account.dart';
import 'package:ecoride/introdruction_screen.dart/login_screen.dart';
import 'package:flutter/material.dart';

class EcoRide extends StatelessWidget {
  const EcoRide({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: h * .3,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Image.network(
                'https://thumbs.dreamstime.com/b/online-taxi-service-app-flat-banner-cartoon-man-looking-car-map-route-standing-near-yellow-cab-cityscape-background-193690409.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: h * .05,
            ),
            Expanded(
              child: Container(
                  height: h * .3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(h * .3 / 2),
                        topRight: Radius.circular(h * .3 / 2),
                      )),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * .08,
                      ),
                      Text(
                        "EcoRide",
                        style: TextStyle(
                            letterSpacing: 6,
                            fontSize: h * .06,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: h * .05,
                      ),
                      SizedBox(
                        height: h * .06,
                        width: w / 1.2,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccount()));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.green.shade900),
                          child: Text(
                            "Create  Account",
                            style: TextStyle(
                                fontSize: h * .03 / 1.2,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .04,
                      ),
                      SizedBox(
                        height: h * .06,
                        width: w / 1.2,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.white.withOpacity(.3),
                              side: BorderSide(color: Colors.white)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                letterSpacing: 1,
                                fontSize: h * .03 / 1.2,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
