import 'package:ecoride/introdruction_screen.dart/eco_ride.dart';
import 'package:flutter/material.dart';

class BookYourRide extends StatelessWidget {
  const BookYourRide({super.key});

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
            Text(
              "Book Your Ride Now",
              style: TextStyle(
                  fontSize: h * .04,
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "",
              style: TextStyle(
                  fontSize: h * .04,
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: h * .08,
            ),
            Expanded(
              child: Container(
                height: h * .3,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(h * .3 / 1),
                      topRight: Radius.circular(h * .3 / 1),
                    )),
                child: Center(
                    child: SizedBox(
                  height: h * .06,
                  width: w * .2,
                  child: IconButton.outlined(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => EcoRide()));
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: h * .03,
                      )),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
