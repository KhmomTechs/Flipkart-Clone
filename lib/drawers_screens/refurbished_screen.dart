import 'package:flutter/material.dart';

class RefurbishedScreen extends StatefulWidget {
  @override
  _RefurbishedScreenState createState() => _RefurbishedScreenState();
}

class _RefurbishedScreenState extends State<RefurbishedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Refurbished Products")),
      body: Center(child: Text("Refurbished Products Screen")),
    );
  }
}
