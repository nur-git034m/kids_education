import 'package:flutter/material.dart';
import 'package:kids_education/screens/fairy_tales/audio_tales.dart';
import 'package:kids_education/screens/fairy_tales/video_page.dart';

import 'package:kids_education/screens/home_page.dart';
import 'package:kids_education/screens/mysterious_misleading/mysterious_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

