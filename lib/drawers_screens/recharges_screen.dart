import 'package:flutter/material.dart';

class RechargesScreen extends StatefulWidget {
  @override
  _RechargesScreenState createState() => _RechargesScreenState();
}

class _RechargesScreenState extends State<RechargesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recharges")),
      body: Center(child: Text("Recharges Screen")),
    );
  }
}
