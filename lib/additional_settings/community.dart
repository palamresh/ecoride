// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  final title = [
    "Today's News",
    "Texi Driver test",
    "New EV Car Lunch",
  ];
  final subtitle = [
    "4 m ago",
    "3 hr ago",
    "6 hr ago",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Community",
          style:
              TextStyle(fontSize: h * .03 / 1.2, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          itemCount: title.length,
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
                          color: Colors.orange,
                          fontSize: h * .02,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      subtitle[index],
                      style: TextStyle(fontSize: h * .02 / 1.1),
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.green),
                      onPressed: () {},
                      child: Text(
                        "Read",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
