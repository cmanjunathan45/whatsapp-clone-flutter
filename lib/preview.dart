import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  Preview({this.imgPath});
  final XFile imgPath;
  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.file(
              File(widget.imgPath.path),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
