import 'package:flutter/material.dart';
import 'package:model_app1/main.dart';

class StarredMessages extends StatefulWidget {
  @override
  _StarredMessagesState createState() => _StarredMessagesState();
}

class _StarredMessagesState extends State<StarredMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Starred messages",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 80.0,
              child: Icon(
                Icons.star_rounded,
                color: Colors.white,
                size: 80.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 150.0,
            width: 150.0,
            child: Text(
              "Tap and hold on any message in any chat to star it, so you can easily find it later.",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
