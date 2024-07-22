import 'package:flutter/material.dart';

import 'setting_screen/change_language.dart';
import 'setting_screen/change_pasword.dart';
import 'setting_screen/contact_us.dart';
import 'setting_screen/delete_account.dart';
import 'setting_screen/privacy_policy.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final title = [
    'Change Password',
    'Change Language',
    'Privacy Policy',
    'Contact us',
    'Delete Account'
  ];

  final a = [
    ChangePassword(),
    ChangeLanguages(),
    PrivacyPolicy(),
    ContactUs(),
    DeleteAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 5, // Replace with your data source length
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.only(left: 10.0, top: 4.0, right: 10.0, bottom: 4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.green,
                  width: 1.0,
                ),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => a[index]));
                },
                title: Text(title[index]), // Replace with your data title
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          );
        },
      ),
    );
  }
}
