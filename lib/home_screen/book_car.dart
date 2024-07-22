import 'package:ecoride/home_screen/request_for_rent.dart';
import 'package:flutter/material.dart';

class BookCar extends StatefulWidget {
  const BookCar({super.key});

  @override
  State<BookCar> createState() => _BookCarState();
}

class _BookCarState extends State<BookCar> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BMW Car",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: h * .03 / 1.2,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "4.9(531 reviews)",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: h * .02 / 1.2,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: h * .03,
              ),
              Image.network(
                "https://tse1.mm.bing.net/th?id=OIP.2N0A0tTHju2fs-bDhiFWqwHaEv&pid=Api&P=0&h=220",
                height: h * .3,
              ),
              Text(
                "Specifications",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: h * .03 / 1.2,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: h * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h * .1,
                    width: w / 4.7,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.withOpacity(.2)),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.electric_bolt),
                          Text(
                            "Max power",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w / 4.7,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.withOpacity(.2)),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.oil_barrel),
                          Text(
                            "Fuel",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w / 4.7,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.withOpacity(.2)),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.speed),
                          Text(
                            "Max speed\n 250kph",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * .1,
                    width: w / 4.7,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.withOpacity(.2)),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.electric_meter_sharp),
                          Text(
                            "0-50mph",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: h * .06,
                    width: w / 2 / 1.2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: const BorderSide(color: Colors.greenAccent),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RequestForRent()));
                        },
                        child: const Text(
                          "Book Later",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  SizedBox(
                    height: h * .06,
                    width: w / 2 / 1.2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            side: const BorderSide(color: Colors.greenAccent),
                            backgroundColor: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RequestForRent()));
                        },
                        child: const Text(
                          "Ride Now",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: h * .03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
