import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.white),
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC NUK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
