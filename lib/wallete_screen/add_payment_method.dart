// ignore_for_file: unused_local_variable

import 'package:ecoride/home_screen/carpoling.dart';
import 'package:ecoride/home_screen/done.dart';
import 'package:flutter/material.dart';

class AddPaymentMethod extends StatefulWidget {
  const AddPaymentMethod({super.key});

  @override
  State<AddPaymentMethod> createState() => _AddPaymentMethodState();
}

class _AddPaymentMethodState extends State<AddPaymentMethod> {
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
              Navigator.pop(context);
            },
            child: Text(
              "Confirm ",
              style: TextStyle(fontSize: h * .03 / 1.4),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
