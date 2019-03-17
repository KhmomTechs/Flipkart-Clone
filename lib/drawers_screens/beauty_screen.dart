import 'package:flutter/material.dart';

class BeautyPersonalScreen extends StatefulWidget {
  @override
  _BeautyPersonalScreenState createState() => _BeautyPersonalScreenState();
}

class _BeautyPersonalScreenState extends State<BeautyPersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beauty & Personal Care")),
      body: Center(child: Text("Beauty & Personal Care Screen")),
    );
  }
}
