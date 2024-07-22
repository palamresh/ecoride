// ignore_for_file: unused_local_variable

import 'package:ecoride/navigation_screen/additional_setting.dart';
import 'package:ecoride/navigation_screen/favourite.dart';
import 'package:ecoride/navigation_screen/offer.dart';
import 'package:ecoride/navigation_screen/wallet.dart';
import 'package:flutter/material.dart';

import '../navigation_screen/home_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var currentIndex = 0;
  List bodyName = [
    HomePage(),
    Favourite(),
    Wellet(),
    OfferScreen(),
    AdditionalSettings()
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: bodyName.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        iconSize: h * .04,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,

        // ignore: prefer_const_literals_to_create_immutables
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.folder_outlined), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "")
        ],
      ),
    );
  }
}
