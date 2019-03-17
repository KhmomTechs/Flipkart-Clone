import 'package:flutter/material.dart';

class LegalScreen extends StatefulWidget {
  @override
  _LegalScreenState createState() => _LegalScreenState();
}

class _LegalScreenState extends State<LegalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Legal Screen")),
      body: Center(child: Text("Legal Screen")),
    );
  }
}
