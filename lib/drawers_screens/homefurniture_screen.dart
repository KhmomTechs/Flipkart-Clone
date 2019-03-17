import 'package:flutter/material.dart';

class HomeFurnitureScreen extends StatefulWidget {
  @override
  _HomeFurnitureScreenState createState() => _HomeFurnitureScreenState();
}

class _HomeFurnitureScreenState extends State<HomeFurnitureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home & Furniture")),
      body: Center(child: Text("Home & Furniture Screen")),
    );
  }
}
