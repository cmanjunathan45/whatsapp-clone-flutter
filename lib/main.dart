import 'package:flutter/material.dart';
import 'package:model_app1/tabs/camera.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:model_app1/main1.dart';
import 'package:model_app1/pop_up_group/call_log.dart';
import 'package:model_app1/pop_up_group/new_broadcast.dart';
import 'package:model_app1/pop_up_group/new_group.dart';
import 'package:model_app1/pop_up_group/payments.dart';
import 'package:model_app1/pop_up_group/starred_messages.dart';
import 'package:model_app1/pop_up_group/status_privacy.dart';
import 'package:model_app1/pop_up_group/whatsapp_web.dart';

import 'pop_up_group/settings.dart';

void main() => runApp(Start());

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff075e54),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => Welcome(),
        "/home": (context) => MyApp(),
        "/new_group": (context) => NewGroup(),
        "/new_broadcast": (context) => NewBroadcast(),
        "/whatsapp_web": (context) => WhatsappWeb(),
        "/starred_messages": (context) => StarredMessages(),
        "/payments": (context) => Payments(),
        "/settings": (context) => Settings(),
        "/status_privacy": (context) => StatusPrivacy(),
        "/call_log": (context) => CallLog(),
        "/camera": (context) => Camera(),
        //"/preview": (context) => Preview(),
      },
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: MyApp(),
      backgroundColor: Colors.white,
      image: Image.asset("assets/icon/launcher_icon.png"),
      photoSize: 40,
      useLoader: false,
      loadingText: Text(
        "            from\nF A C E B O O K",
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
