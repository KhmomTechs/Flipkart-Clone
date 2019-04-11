import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile"),
      ),
      body : Container(
        child: Center(child: Text("Mobile Screen"),)
      ),
    );
  }
}
