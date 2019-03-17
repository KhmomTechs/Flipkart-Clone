import 'package:flutter/material.dart';

class SportsBookScreen extends StatefulWidget {
  @override
  _SportsBookScreenState createState() => _SportsBookScreenState();
}

class _SportsBookScreenState extends State<SportsBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sports,Books & More")),
      body: Center(child: Text("Sports,Books & More Screen")),
    );
  }
}
