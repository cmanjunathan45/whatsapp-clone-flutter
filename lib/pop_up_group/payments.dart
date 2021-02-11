import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Payments",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Container(
            height: 130.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Payment history",
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.payment_outlined,
                    size: 60.0,
                    color: Colors.black26,
                  ),
                ),
                Center(
                  child: Text(
                    "No payment history",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            height: 40.0,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Payment methods",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          Container(
            height: 70.0,
            width: double.infinity,
            color: Colors.green[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.security_outlined,
                    color: Colors.teal[800],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: Text(
                            "To protect your security, WhatsApp does not store your UPI PIN or full bank account numbers.",
                            style: TextStyle(
                              fontSize: 11.0,
                            ),
                          ),
                        ),
                        InkWell(
                          child: Text(
                            "Learn more",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          onTap: () {},
                          onLongPress: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: 50.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    "Add payment method",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
            splashColor: Colors.black12,
          ),
          SizedBox(
            height: 8.0,
          ),
          InkWell(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: 50.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.help_outline_rounded,
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
            splashColor: Colors.black12,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.monetization_on_sharp),
        label: Text(
          "NEW PAYMENT",
          style: TextStyle(
            fontSize: 11.0,
          ),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
