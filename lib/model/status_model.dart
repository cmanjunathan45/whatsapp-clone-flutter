import 'package:model_app1/tabs/status.dart';

class StatusModel {
  final String name;
  final String time;
  final String pic;

  StatusModel(this.name, this.time, this.pic);
}

List<StatusModel> statusData = [
  new StatusModel(
      "Friend", "1 hour ago", "https://randomuser.me/api/portraits/men/1.jpg"),
  new StatusModel(
      "Friend 1", "3.30 PM", "https://randomuser.me/api/portraits/men/1.jpg"),
  new StatusModel(
      "God", "1.30 PM", "https://randomuser.me/api/portraits/men/2.jpg"),
  new StatusModel(
      "Me", "1 hour ago", "https://randomuser.me/api/portraits/men/0.jpg"),
  new StatusModel(
      "Friend 1", "3.30 PM", "https://randomuser.me/api/portraits/men/1.jpg"),
  new StatusModel(
      "God", "1.30 PM", "https://randomuser.me/api/portraits/men/2.jpg"),
  new StatusModel(
      "Me", "1 hour ago", "https://randomuser.me/api/portraits/men/0.jpg"),
  new StatusModel(
      "God", "1.30 PM", "https://randomuser.me/api/portraits/men/2.jpg"),
];
