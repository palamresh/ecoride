import 'package:ecoride/wallete_screen/amount.dart';
import 'package:flutter/material.dart';

class Wellet extends StatefulWidget {
  const Wellet({super.key});

  @override
  State<Wellet> createState() => _WelletState();
}

class _WelletState extends State<Wellet> {
  final title = ["1", "1"];
  final subtitle = ["Today at 9 am", "Today at 9:20 am"];
  final icon = [Icons.arrow_outward, Icons.arrow_downward];
  final addAndRemoveWallet = [
    "-\$100",
    "\$400",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: h * .06,
              width: w / 1.6,
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    side: BorderSide(color: Colors.green)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Amount_Screen()));
                },
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: h * .03 / 1.2,
                      color: Colors.green,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: h * .2,
                width: w / 2.5,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$500",
                        style:
                            TextStyle(color: Colors.black, fontSize: h * .03),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        "Available Balance",
                        style:
                            TextStyle(color: Colors.black, fontSize: h * .02),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: h * .2,
                width: w / 2.5,
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$200",
                        style:
                            TextStyle(color: Colors.black, fontSize: h * .03),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        "Total Expense",
                        style:
                            TextStyle(color: Colors.black, fontSize: h * .02),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Transections",
                style: TextStyle(color: Colors.black, fontSize: h * .02),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(color: Colors.green, fontSize: h * .02),
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all()),
                      child: ListTile(
                        title: Text(
                          title[index],
                          style: TextStyle(
                              fontSize: h * .02, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          subtitle[index],
                          style: TextStyle(fontSize: h * .02 / 1.1),
                        ),
                        leading: CircleAvatar(
                            backgroundColor: Colors.amber.shade100,
                            child: Icon(icon[index])),
                        trailing: Text(
                          addAndRemoveWallet[index],
                          style:
                              TextStyle(fontSize: h * .02, color: Colors.black),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
