// ignore_for_file: unused_local_variable

import 'package:ecoride/Drawer_screen/settings.dart';
import 'package:ecoride/introdruction_screen.dart/login_screen.dart';
import 'package:flutter/material.dart';

import '../Drawer_screen/about.dart';
import '../Drawer_screen/complain.dart';
import '../Drawer_screen/help_and_support.dart';
import '../Drawer_screen/history.dart';
import '../Drawer_screen/referal.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final title = [
    "History",
    "Complain",
    "Referal",
    "About us",
    "Settings",
    "Help and Support",
    "Logout"
  ];

  final icon = [
    Icons.history,
    Icons.view_compact_outlined,
    Icons.transfer_within_a_station,
    Icons.subject,
    Icons.settings,
    Icons.help,
    Icons.logout
  ];

  final routes = [
    HistoryScreen(),
    ComplainScreen(),
    ReferalScreen(),
    AboutScreen(),
    Settings(),
    HelpAndSupport(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Drawer(
        child: Column(
      //  padding: const EdgeInsets.all(0),
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            decoration: const BoxDecoration(color: Colors.white),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green.shade100),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                    "https://tse2.mm.bing.net/th?id=OIP.h60WyZgyqdw_nbvvCrGNxgHaHp&pid=Api&P=0&h=220"),
              ),
              accountName: const Text(
                "Harsh",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                "harsh@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
            )),
        Expanded(
          child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (contex, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        if (index == 6) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => routes[index]));
                        }
                      },
                      leading: Icon(icon[index]),
                      title: Text(
                        title[index],
                        style: TextStyle(fontSize: h * .02),
                      ),
                    ),
                    Divider()
                  ],
                );
              }),
        ),
      ],
    ));
  }
}
