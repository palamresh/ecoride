import 'package:ecoride/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  _makingPhoneCall() async {
    var url = Uri.parse("tel:9776765434");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Driver is comming in : 2:30 PM",
              style: TextStyle(fontSize: h * .03 / 1.3),
            ),
            SizedBox(
              height: h * .03,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.greenAccent)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://tse2.mm.bing.net/th?id=OIP.h60WyZgyqdw_nbvvCrGNxgHaHp&pid=Api&P=0&h=220"),
                ),
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
            SizedBox(
              height: h * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: TextStyle(fontSize: h * .03 / 1.3),
                ),
                Text(
                  "\$200",
                  style: TextStyle(fontSize: h * .03 / 1.3),
                ),
              ],
            ),
            SizedBox(
              height: h * .03,
            ),
            Padding(
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
                    'https://tse1.mm.bing.net/th?id=OIP.wVCCwbT5dbg7i2RiXkQDlwHaFe&pid=Api&P=0&h=220',
                    width: 50,
                    height: 50,
                  ),
                  title: Text(
                    '.... .... .... 1010',
                    style: TextStyle(fontSize: h * .03),
                  ),
                  subtitle: Text(
                    'Expire 12/2',
                    style: TextStyle(fontSize: h * .02),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(
              height: h * .03,
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
                        _makingPhoneCall();
                      },
                      child: const Text(
                        "Call",
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
                                builder: (context) => NavigationScreen()));
                      },
                      child: const Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
