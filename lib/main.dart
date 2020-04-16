import 'package:flutter/material.dart';
import 'package:sliver_flutter/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
      theme: ThemeData(
        primaryColor: Color(0xFFF6356F),
        scaffoldBackgroundColor: Color(0xFFF6F9F8),
      ),
    );
  }
}
