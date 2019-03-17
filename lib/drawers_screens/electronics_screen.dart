import 'package:flutter/material.dart';

class ElectronicsScreen extends StatefulWidget {
  @override
  _ElectronicsScreenState createState() => _ElectronicsScreenState();
}

class _ElectronicsScreenState extends State<ElectronicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Electronics")),
      body: Center(child: Text("Electronics Screen")),
    );
  }
}
