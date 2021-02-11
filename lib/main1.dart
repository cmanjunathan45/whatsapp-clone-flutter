import 'dart:math';

import 'package:flutter/material.dart';

import 'package:model_app1/pop_up_group/call_log.dart';

import 'package:model_app1/tabs/calls.dart';
import 'package:model_app1/tabs/camera.dart';
import 'package:model_app1/tabs/chats.dart';
import 'package:model_app1/tabs/status.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  bool _isSearch = true;
  bool _call = true;
  final _textController = TextEditingController();
  String chat = "CHATS";
  String status = "STATUS";
  String calls = "CALLS";
  createAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              "Do you want to clear your entire call log?",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  return Navigator.pop(context);
                },
                child: Text(
                  "CANCEL",
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _call = false;
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "OK",
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return _tabController.index == 0
        ? Camera()
        : Scaffold(
            appBar: _isSearch
                ? AppBar(
                    leading: Container(),
                    leadingWidth: 10.0,
                    title: Text("WhatsApp"),
                    actions: [
                      IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isSearch = false;
                            });
                          }),
                      _tabController.index.toString() == "1"
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PopupMenuButton(
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    value: "new_group",
                                    child: Text("New Group"),
                                  ),
                                  PopupMenuItem(
                                    value: "new_broadcast",
                                    child: Text("New Broadcast"),
                                  ),
                                  PopupMenuItem(
                                    value: "whatsapp_web",
                                    child: Text("Whatsapp Web"),
                                  ),
                                  PopupMenuItem(
                                    value: "starred_messages",
                                    child: Text("Starred messages"),
                                  ),
                                  PopupMenuItem(
                                    value: "payments",
                                    child: Text("Payments"),
                                  ),
                                  PopupMenuItem(
                                    value: "settings",
                                    child: Text("Settings"),
                                  ),
                                ],
                                onSelected: (retVal) {
                                  if (retVal == "new_group") {
                                    setState(() {
                                      Navigator.pushNamed(
                                          context, "/new_group");
                                    });
                                  } else if (retVal == "new_broadcast") {
                                    setState(() {
                                      Navigator.pushNamed(
                                          context, "/new_broadcast");

                                      //print(darkThemes);
                                    });
                                  } else if (retVal == "whatsapp_web") {
                                    setState(() {
                                      Navigator.pushNamed(
                                          context, "/whatsapp_web");
                                    });
                                  } else if (retVal == "starred_messages") {
                                    setState(() {
                                      Navigator.pushNamed(
                                          context, "/starred_messages");
                                    });
                                  } else if (retVal == "payments") {
                                    setState(() {
                                      Navigator.pushNamed(context, "/payments");
                                    });
                                  } else if (retVal == "settings") {
                                    setState(() {
                                      Navigator.pushNamed(context, "/settings");
                                    });
                                  }
                                },
                                child: Icon(Icons.more_vert),
                              ),
                            )
                          : _tabController.index.toString() == "2"
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PopupMenuButton(
                                    itemBuilder: (context) => [
                                      PopupMenuItem(
                                        value: "status_privacy",
                                        child: Text("Status privacy"),
                                      ),
                                      PopupMenuItem(
                                        value: "settings",
                                        child: Text("Settings"),
                                      ),
                                    ],
                                    onSelected: (retVal) {
                                      if (retVal == "status_privacy") {
                                        setState(() {
                                          Navigator.pushNamed(
                                              context, "/status_privacy");
                                        });
                                      } else if (retVal == "settings") {
                                        setState(() {
                                          Navigator.pushNamed(
                                              context, "/settings");
                                        });
                                      }
                                    },
                                    child: Icon(Icons.more_vert),
                                  ),
                                )
                              : _tabController.index.toString() == "3"
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: PopupMenuButton(
                                        itemBuilder: (context) => [
                                          PopupMenuItem(
                                            value: "call_log",
                                            child: Text("Clear Call Log"),
                                          ),
                                          PopupMenuItem(
                                            value: "settings",
                                            child: Text("Settings"),
                                          ),
                                        ],
                                        onSelected: (retVal) {
                                          if (retVal == "call_log") {
                                            return createAlert(context);
                                          } else if (retVal == "settings") {
                                            setState(() {
                                              Navigator.pushNamed(
                                                  context, "/settings");
                                            });
                                          }
                                        },
                                        child: Icon(Icons.more_vert),
                                      ),
                                    )
                                  : Container(),
                    ],
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.camera_alt,
                            size: 15.0,
                          ),
                        ),
                        Tab(
                          child: Text(
                            chat,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            status,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            calls,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : AppBar(
                    leading: IconButton(
                        icon: Icon(Icons.arrow_back_rounded),
                        onPressed: () {
                          setState(() {
                            _isSearch = true;
                          });
                        }),
                    title: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      controller: _textController,
                      maxLines: 1,
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                        ),
                        child: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              setState(() {
                                _textController.text = "";
                              });
                            }),
                      ),
                    ],
                  ),
            body: TabBarView(
              controller: _tabController,
              children: [
                Camera(),
                Chats(),
                Status(),
                _call ? Call() : CallLog(),
              ],
            ),
            floatingActionButton: _tabController.index == 1
                ? Transform.rotate(
                    angle: 0 * pi / 180,
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: FloatingActionButton(
                              heroTag: "btn1",
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 10.0),
                          FloatingActionButton(
                            heroTag: "btn2",
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    : Container(
                        height: 50.0,
                        width: 50.0,
                        child: FloatingActionButton(
                          child: Icon(
                            Icons.add_call,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
          );
  }
}
