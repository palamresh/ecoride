// ignore_for_file: prefer_const_constructors

import 'package:ecoride/home_screen/carpoling.dart';
import 'package:ecoride/home_screen/corporate.dart';
import 'package:ecoride/home_screen/event_ride.dart';
import 'package:ecoride/home_screen/view_car_list.dart';
import 'package:flutter/material.dart';

class AvailableCar extends StatefulWidget {
  const AvailableCar({super.key});

  @override
  State<AvailableCar> createState() => _AvailableCarState();
}

class _AvailableCarState extends State<AvailableCar> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Available Car for ride",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: h * .03 / 1.2,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "6 cars found",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: h * .02 / 1.2,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: h * .03,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: h * .3 / 1.1,
                width: w / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BMW Cabrio",
                                style: TextStyle(
                                    color: Colors.black, fontSize: h * .02),
                              ),
                              Text(
                                "Automatic | 2seta | octaine",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: h * .02 / 1.4),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    "800m (5 min away)",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * .02 / 1.5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.network(
                            "https://tse1.mm.bing.net/th?id=OIP.WMTJAnYZCHFLuxQmVZwvNwHaE8&pid=Api&P=0&h=220",
                            height: h * .08,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CarPooling()));
                              },
                              icon: Icon(Icons.car_crash_outlined),
                            ),
                            SizedBox(
                              width: w * .03,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CorPorate()));
                                },
                                icon: Icon(Icons.corporate_fare))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * .06,
                        width: w / 1.2,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(color: Colors.greenAccent),
                                backgroundColor: Colors.green),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewCarList()));
                            },
                            child: Text(
                              "View Car list",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * .05,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: h * .3 / 1.1,
                width: w / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Audi",
                                style: TextStyle(
                                    color: Colors.black, fontSize: h * .02),
                              ),
                              Text(
                                "Automatic | 2seta | octaine",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: h * .02 / 1.4),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    "800m (5 min away)",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * .02 / 1.5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.network(
                            "https://tse2.mm.bing.net/th?id=OIP.zu6MzwXB5Fjaxf3Z3Q1x5wHaD1&pid=Api&P=0&h=220",
                            height: h * .08,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CarPooling()));
                              },
                              icon: Icon(Icons.car_crash_outlined),
                            ),
                            SizedBox(
                              width: w * .03,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EventRide()));
                                },
                                icon: Icon(Icons.corporate_fare))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * .06,
                        width: w / 1.2,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(color: Colors.greenAccent),
                                backgroundColor: Colors.green),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewCarList()));
                            },
                            child: Text(
                              "View Car list",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
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
