import 'package:ecoride/home_screen/book_car.dart';
import 'package:flutter/material.dart';

class ViewCarList extends StatefulWidget {
  const ViewCarList({super.key});

  @override
  State<ViewCarList> createState() => _ViewCarListState();
}

class _ViewCarListState extends State<ViewCarList> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
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
              Container(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(color: Colors.greenAccent),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BookCar()));
                                },
                                child: Text(
                                  "Book Later",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(color: Colors.greenAccent),
                                    backgroundColor: Colors.green),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BookCar()));
                                },
                                child: Text(
                                  "Ride Now",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * .05,
              ),
              Container(
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
                            "https://tse2.mm.bing.net/th?id=OIP.zu6MzwXB5Fjaxf3Z3Q1x5wHaD1&pid=Api&P=0&h=220",
                            height: h * .08,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(color: Colors.greenAccent),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Book Later",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(color: Colors.greenAccent),
                                    backgroundColor: Colors.green),
                                onPressed: () {},
                                child: Text(
                                  "Ride Now",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * .05,
              ),
              Container(
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
                            "https://tse3.mm.bing.net/th?id=OIP.XxuDGfcq0vtTnKSxiY0SfwHaE6&pid=Api&P=0&h=220",
                            height: h * .08,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(color: Colors.greenAccent),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Book Later",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(color: Colors.greenAccent),
                                    backgroundColor: Colors.green),
                                onPressed: () {},
                                child: Text(
                                  "Ride Now",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * .05,
              ),
              Container(
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
                            "https://tse1.mm.bing.net/th?id=OIP.2N0A0tTHju2fs-bDhiFWqwHaEv&pid=Api&P=0&h=220",
                            height: h * .08,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(color: Colors.greenAccent),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Book Later",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: h * .06,
                            width: w / 2 / 1.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(color: Colors.greenAccent),
                                    backgroundColor: Colors.green),
                                onPressed: () {},
                                child: Text(
                                  "Ride Now",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * .05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
