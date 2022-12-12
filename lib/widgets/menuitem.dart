import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuItems extends StatelessWidget {
  IconData icon;
  String text;
  Function() ontap;
  MenuItems({
    Key? key,
    required this.icon,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color(0xFF318E8C),
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 16.0,
        ),
      ),
      onTap: ontap,
    );
  }
}
