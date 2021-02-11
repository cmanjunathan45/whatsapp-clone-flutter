import 'package:flutter/material.dart';
import 'package:model_app1/model/chat_model.dart';

class NewBroadcast extends StatefulWidget {
  @override
  _NewBroadcastState createState() => _NewBroadcastState();
}

class _NewBroadcastState extends State<NewBroadcast> {
  bool _isSearchPart = true;
  final _textControllerPart = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isSearchPart
          ? AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New broadcast",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "0 of 256 selected",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        _isSearchPart = false;
                      });
                    }),
              ],
            )
          : AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  onPressed: () {
                    setState(() {
                      _isSearchPart = true;

                      return _textControllerPart.text = "";
                    });
                  }),
              title: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: _textControllerPart,
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
      body: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) => new Column(
          children: [
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "btn0",
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
    );
  }
}
