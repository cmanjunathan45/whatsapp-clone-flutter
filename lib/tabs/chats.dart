import 'package:flutter/material.dart';
import 'package:model_app1/model/chat_model.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) => new Column(
              children: [
                Divider(
                  height: 0.1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                      chatsData[i].pic,
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chatsData[i].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        chatsData[i].time,
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    chatsData[i].msg,
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ));
  }
}
