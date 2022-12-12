import 'package:flutter/material.dart';
import 'package:settingpage/button.dart';
import 'package:settingpage/settingpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Setting page",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Center(
        child: Button(
          bgColor: Color(0xFF318E8C),
          shColor: Colors.black12,
          elevation: 1,
          height: 80,
          width: MediaQuery.of(context).size.width / 2,
          radius: 15,
          btntext: "Setting",
          txtColor: Colors.white,
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Setting(),
              ),
            );
          },
        ),
      ),
    );
  }
}
