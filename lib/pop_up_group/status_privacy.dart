import 'package:flutter/material.dart';

class StatusPrivacy extends StatefulWidget {
  @override
  _StatusPrivacyState createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
  int _gValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            return Navigator.pop(context);
          },
        ),
        title: Text(
          "Status privacy",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Who can see my status updates",
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              child: Column(
                children: [
                  RadioListTile(
                    value: 1,
                    title: Text("My contacts"),
                    groupValue: _gValue,
                    onChanged: (val) {
                      setState(() {
                        _gValue = val;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 2,
                    title: Text("My contacts except..."),
                    groupValue: _gValue,
                    onChanged: (val) {
                      setState(() {
                        _gValue = val;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 3,
                    title: Text("Only share with..."),
                    groupValue: _gValue,
                    onChanged: (val) {
                      setState(() {
                        _gValue = val;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              left: 18.0,
              right: 10.0,
            ),
            child: Text(
              "Changes to your privacy settings won't affect status updates that you've sent already",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          SizedBox(
            height: 220.0,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                elevation: 5.0,
              ),
              child: Text(
                "DONE",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              onPressed: () {
                return Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
