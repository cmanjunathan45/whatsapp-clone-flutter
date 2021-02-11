import 'package:flutter/material.dart';

class CallLog extends StatefulWidget {
  @override
  _CallLogState createState() => _CallLogState();
}

class _CallLogState extends State<CallLog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 250.0,
        child: Text(
          "To start calling contacts who have WhatsApp, tap the call icon at the bottom of your screen",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
