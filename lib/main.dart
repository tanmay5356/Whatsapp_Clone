import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screeens/CameraScreen.dart';
import 'Screeens/LoginScreen.dart';

//import 'Screeens/camsc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "OpenSans",
            primaryColor: Color(0xFF075354),
            accentColor: Color(0xFF128C7E)),
        home: LoginScreen());
  }
}
