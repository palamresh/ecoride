// ignore_for_file: unused_local_variable

import 'package:ecoride/home_screen/carpoling.dart';
import 'package:ecoride/home_screen/done.dart';
import 'package:flutter/material.dart';

class RequestForRent extends StatefulWidget {
  const RequestForRent({super.key});

  @override
  State<RequestForRent> createState() => _RequestForRentState();
}

class _RequestForRentState extends State<RequestForRent> {
  final CardImage = [
    "https://tse1.mm.bing.net/th?id=OIP.wVCCwbT5dbg7i2RiXkQDlwHaFe&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.wstlybXjf3i1JeprVS6thQHaEy&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.ZRRF52ne-wpwhufZQUoHggHaEK&pid=Api&P=0&h=220",
    "https://tse2.mm.bing.net/th?id=OIP.VywmI7tqNOECZVMk-ph3pQHaEK&pid=Api&P=0&h=220",
  ];

  final title = [
    ".... .... .... 1010",
    ".... .... .... 1010",
    ".... .... .... 1010",
    ".... ...403"
  ];
  final subtitle = [
    "Expire 12/2",
    "Expire 11/2",
    "Expire 04/2",
    "Expire 11/27"
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: SizedBox(
          height: h * .1 / 1.3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DoneScreen()));
            },
            child: Text(
              "Confirm Ride",
              style: TextStyle(fontSize: h * .03 / 1.4, color: Colors.white),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Request For Rent",
          style: TextStyle(fontSize: h * .03 / 1.3),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              title: Text(
                "Current Location",
                style:
                    TextStyle(fontSize: h * .02, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "150 feet ring road mavdi",
                style: TextStyle(
                    fontSize: h * .02 / 1.5, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: h * .04,
                width: 2,
                color: Colors.green,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              title: Text(
                "Office",
                style:
                    TextStyle(fontSize: h * .02, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "150 feet ring road nana mavo circle",
                style: TextStyle(
                    fontSize: h * .02 / 1.5, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.greenAccent)),
              child: ListTile(
                title: Text(
                  "BMW Car",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .03 / 1.3,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
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
                trailing: Image.network(
                    'https://tse1.mm.bing.net/th?id=OIP.2N0A0tTHju2fs-bDhiFWqwHaEv&pid=Api&P=0&h=220'),
              ),
            ),
            Text(
              "Charge",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: h * .03 / 1.3,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BMW car",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.1,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$200",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.1,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: h * .01 / 1.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GST (5%)",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.1,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$20",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .02 / 1.1,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: h * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Payment Method",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .03 / 1.3,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CarPooling()));
                    },
                    icon: Icon(Icons.manage_accounts_rounded))
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 87, 92, 96),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ListTile(
                        leading: Image.network(
                          CardImage[index],
                          width: 50,
                          height: 50,
                        ),
                        title: Text(
                          title[index],
                          style: TextStyle(fontSize: h * .03),
                        ),
                        subtitle: Text(
                          subtitle[index],
                          style: TextStyle(fontSize: h * .02),
                        ),
                        onTap: () {
                          setState(() {});
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
