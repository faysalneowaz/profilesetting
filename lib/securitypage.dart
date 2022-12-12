import 'package:flutter/material.dart';
import 'package:settingpage/widgets/menuitem.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black87, //change your color here
        ),
        title: const Text(
          "Security",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            MenuItems(icon: Icons.key_outlined, text: "password", ontap: () {}),
            MenuItems(
                icon: Icons.location_on_outlined,
                text: "Login Activity",
                ontap: () {}),
            MenuItems(
                icon: Icons.contacts_outlined,
                text: "Contact Info",
                ontap: () {}),
            MenuItems(
                icon: Icons.phone_android_outlined,
                text: "Two Factor Authentication",
                ontap: () {}),
            MenuItems(
                icon: Icons.quick_contacts_dialer_outlined,
                text: "Legacy Contact",
                ontap: () {}),
            MenuItems(icon: Icons.block, text: "Block User", ontap: () {}),
            MenuItems(icon: Icons.devices, text: "Devices", ontap: () {}),
          ],
        ),
      ),
    );
  }
}
