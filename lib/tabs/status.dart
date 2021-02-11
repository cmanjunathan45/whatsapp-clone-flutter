import 'package:flutter/material.dart';
import 'package:model_app1/model/status_model.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://randomuser.me/api/portraits/men/1.jpg",
                          width: 90.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 15.0,
                          height: 15.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add Status Update"),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Color(0xff2e8b57),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              "Recent Update",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 0.1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusData[i].pic),
                  ),
                  title: Row(
                    children: [
                      Text(
                        statusData[i].name,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  subtitle: Container(
                    child: Text(
                      statusData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              "Viewed Updates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        Divider(
                          height: 0.1,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(statusData[i].pic),
                          ),
                          title: Row(
                            children: [
                              Text(
                                statusData[i].name,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          subtitle: Container(
                            child: Text(
                              statusData[i].time,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0),
                            ),
                          ),
                        ),
                      ],
                    ))),
      ],
    );
  }
}
