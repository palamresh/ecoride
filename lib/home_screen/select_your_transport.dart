import 'package:ecoride/home_screen/available_car.dart';
import 'package:flutter/material.dart';

class SelectYourTransport extends StatefulWidget {
  const SelectYourTransport({super.key});

  @override
  State<SelectYourTransport> createState() => _SelectYourTransportState();
}

class _SelectYourTransportState extends State<SelectYourTransport> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Your Transport",
          style: TextStyle(fontSize: h * .03 / 1.3),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: h * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvailableCar()));
                },
                child: Container(
                  height: h * .2,
                  width: w / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://tse1.mm.bing.net/th?id=OIP.WMTJAnYZCHFLuxQmVZwvNwHaE8&pid=Api&P=0&h=220",
                          height: h * .08,
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text(
                          "Car",
                          style:
                              TextStyle(color: Colors.black, fontSize: h * .02),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: h * .2,
                width: w / 2.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://tse3.mm.bing.net/th?id=OIP.BNOOTK3NSjluMJRZxyExWAHaFj&pid=Api&P=0&h=220",
                        height: h * .08,
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        "Bike",
                        style:
                            TextStyle(color: Colors.black, fontSize: h * .02),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
