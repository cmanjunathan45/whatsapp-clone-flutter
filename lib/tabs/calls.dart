import 'dart:math';

import 'package:flutter/material.dart';
import 'package:model_app1/model/call_model.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => new Column(
              children: [
                Divider(
                  height: 0.1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(callData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        callData[i].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      i % 2 == 0
                          ? IconButton(
                              icon: Icon(
                                Icons.call,
                                color: Theme.of(context).primaryColor,
                                size: 20.0,
                              ),
                              onPressed: () {},
                            )
                          : IconButton(
                              icon: Icon(
                                Icons.videocam,
                                color: Theme.of(context).primaryColor,
                                size: 20.0,
                              ),
                              onPressed: () {},
                            ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      i % 2 == 0
                          ? Transform.rotate(
                              angle: 45 * pi / 180,
                              child: Icon(
                                (Icons.arrow_downward_outlined),
                                color: Colors.red,
                                size: 15.0,
                              ),
                            )
                          : Transform.rotate(
                              angle: 45 * pi / 180,
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                color: Theme.of(context).primaryColor,
                                size: 15.0,
                              ),
                            ),
                      Text(
                        callData[i].time,
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
