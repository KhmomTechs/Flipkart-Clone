import 'package:flipkartclone/homepage.dart';
import 'package:flutter/material.dart';
import 'drawer_content1.dart';

void main() => runApp(MyApp());
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flipkart',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


