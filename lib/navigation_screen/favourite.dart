// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  final title = ["Office", "Home"];
  final subtitle = ["2923 city rajkot", "250 feet ring road mavdi"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favourite",
          style:
              TextStyle(fontSize: h * .03 / 1.2, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
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
                  leading: Icon(
                    Icons.location_on,
                    size: h * .04,
                  ),
                  trailing: Icon(
                    Icons.remove,
                    color: Colors.redAccent,
                    size: h * .04,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
