import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 15.0,
              ),
              child: Container(
                height: 70.0,
                width: double.infinity,
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                        "https://randomuser.me/api/portraits/men/0.jpg"),
                  ),
                  title: Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Container(
                    height: 20.0,
                    width: 20.0,
                    child: Text(
                      "EveryThing is possible",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.qr_code_rounded,
                      color: Color(0xff2e8b57),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.25,
              color: Colors.black54,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Transform.rotate(
                  angle: 90.0 * pi / 180,
                  child: Icon(Icons.vpn_key),
                ),
              ),
              title: Text(
                "Account",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Privacy, security, change number",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Transform.rotate(
                  angle: 0 * pi / 180,
                  child: Icon(Icons.message),
                ),
              ),
              title: Text(
                "Chats",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Theme, wallpaper, chat history",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Transform.rotate(
                  angle: 0 * pi / 180,
                  child: Icon(Icons.notifications),
                ),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Message, group & call tunes",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Transform.rotate(
                  angle: 0 * pi / 180,
                  child: Icon(Icons.storage_rounded),
                ),
              ),
              title: Text(
                "Storage",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Network usage, auto-download",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Transform.rotate(
                  angle: 0 * pi / 180,
                  child: Icon(Icons.help_outline_rounded),
                ),
              ),
              title: Text(
                "Help",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Help center, contact us, privacy policy",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 67.0),
              child: Divider(
                thickness: 0.25,
                color: Colors.black54,
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Transform.rotate(
                  angle: 0 * pi / 180,
                  child: Icon(Icons.group),
                ),
              ),
              title: Text(
                "Invite a friend",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "from",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "FACEBOOK",
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
