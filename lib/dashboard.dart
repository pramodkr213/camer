import 'package:camerass/screen/cam.dart';
import 'package:camerass/screen/cam_1.dart';
import 'package:camerass/screen/test.dart';
import 'package:camerass/screen/test_1.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dash-Board',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightGreenAccent,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
                height: 25.0
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CameraWeb()));
              },
              child: Text(
                  'Cam'
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Camera Camera 3.0')));
              },
              child: Text(
                  'Cam-3'
              ),
            ),
            // SizedBox(
            //   height: 25.0,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context) => CameraApp()));
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => cameraScreen()));
            //   },
            //   child: Text(
            //     'Cam-1'
            //   ),
            // ),
            // SizedBox(
            //   height: 25.0,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayPictureScreen(imagePath: '',)));
            //   },
            //     child: Text(
            //       'Cam-2'
            //     ),
            // ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Compress_Img()));
                },
                child: Text(
                  'Test'
                )
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MainPage()));
                },
                child: Text(
                  'Test-1'
                )
            )
          ],
        ),
      ),
    );
  }
}

