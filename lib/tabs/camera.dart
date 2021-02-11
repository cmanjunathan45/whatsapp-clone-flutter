import 'dart:io';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:camera/camera.dart';
import 'package:model_app1/preview.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

File myValue;

class _CameraState extends State<Camera> {
  CameraController _cameraController;
  List cameras;
  int _selectedCameraIndex;

  @override
  void initState() {
    super.initState();
    availableCameras().then((value) {
      cameras = value;
      if (cameras.length > 0) {
        _selectedCameraIndex = 0;
        initCamera(cameras[_selectedCameraIndex]).then((_) {});
      }
    }).catchError((e) {
      print(e.code);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future initCamera(CameraDescription cameraDescription) async {
    if (_cameraController != null) {
      await _cameraController.dispose();
    }
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    _cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    if (_cameraController.value.hasError) {
      print("Camera error");
    }
    try {
      await _cameraController.initialize();
    } catch (e) {
      print("Error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: cameraPreview(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CameraToggle(),
                    cameraControl(context),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cameraPreview() {
    if (_cameraController == null || !_cameraController.value.isInitialized) {
      return Text(
        "Loading",
        style: TextStyle(color: Colors.white),
      );
    }
    return AspectRatio(
      aspectRatio: _cameraController.value.aspectRatio,
      child: CameraPreview(_cameraController),
    );
  }

  Widget CameraToggle() {
    if (cameras == null || cameras.isEmpty) {
      return Spacer();
    }
    CameraDescription _selectedCamera = cameras[_selectedCameraIndex];
    CameraLensDirection _lensDirection = _selectedCamera.lensDirection;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          onPressed: () {
            onSwitchCamera();
          },
          icon: Icon(
            getCameraLensIcon(_lensDirection),
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }

  getCameraLensIcon(_lensDirection) {
    switch (_lensDirection) {
      case CameraLensDirection.back:
        return CupertinoIcons.switch_camera;
      case CameraLensDirection.front:
        return CupertinoIcons.switch_camera_solid;
      case CameraLensDirection.external:
        return CupertinoIcons.photo_camera;

      default:
        return Icons.device_unknown;
    }
  }

  onSwitchCamera() {
    _selectedCameraIndex = _selectedCameraIndex < cameras.length - 1
        ? _selectedCameraIndex + 1
        : 0;
    CameraDescription _selectedCamera = cameras[_selectedCameraIndex];
    initCamera(_selectedCamera);
  }

  Widget cameraControl(context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              child: Container(
                color: Colors.transparent,
                child: CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 30.0,
                ),
              ),
              onTap: () {
                onCapture(context);
              },
            ),
            // FloatingActionButton(
            //   child: Icon(
            //     Icons.camera,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {
            //     onCapture(context);
            //   },
            //   backgroundColor: Colors.black,
            // ),
          ],
        ),
      ),
    );
  }

  onCapture(Context) async {
    try {
      await _cameraController.takePicture().then(
        (value) {
          print(value);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Preview(
                        imgPath: value,
                      )));
        },
      );
      //Navigator.pushNamed(context, "/preview");

    } catch (e) {
      print("$e");
    }
  }
}
