// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EventRide extends StatefulWidget {
  const EventRide({super.key});

  @override
  State<EventRide> createState() => _EventRideState();
}

class _EventRideState extends State<EventRide> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Event Ride',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      Text(
                        "Available",
                        style:
                            TextStyle(color: Colors.green, fontSize: h * .05),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * .05,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Date",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: h * .03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: h * .03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Members",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
