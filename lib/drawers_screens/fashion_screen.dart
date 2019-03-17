import 'package:flutter/material.dart';

class FashionScreen extends StatefulWidget {
  @override
  _FashionScreenState createState() => _FashionScreenState();
}

class _FashionScreenState extends State<FashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fashion")),
      body: Center(child: Text("Fashion Screen")),
    );
  }
}
