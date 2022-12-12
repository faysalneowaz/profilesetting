// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:settingpage/securitypage.dart';
import 'package:settingpage/widgets/menuitem.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black87, //change your color here
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Account",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Faysal Neowaz",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "faysalneowaz@gmail.com",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1669917172469-1d9dd1e99491?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            MenuItems(icon: Icons.lock_outline, text: "Privacy", ontap: () {}),
            MenuItems(
                icon: Icons.security,
                text: "Security",
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Security(),
                    ),
                  );
                }),
            MenuItems(
                icon: Icons.notifications_none,
                text: "Notification",
                ontap: () {}),
            MenuItems(
                icon: Icons.privacy_tip_outlined,
                text: "Data Privacy",
                ontap: () {}),
            MenuItems(icon: Icons.language, text: "Language", ontap: () {}),
            MenuItems(
                icon: Icons.storage_outlined,
                text: "Storage Settings",
                ontap: () {}),
            const Divider(
              thickness: 1.0,
              color: Colors.black26,
            ),
            Buttontext(
              text: "Help Center",
              ontap: () {},
            ),
            Buttontext(
              text: "About",
              ontap: () {},
            ),
            Buttontext(
              text: "FAQ",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Buttontext extends StatelessWidget {
  String text;
  Function() ontap;
  Buttontext({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }
}
