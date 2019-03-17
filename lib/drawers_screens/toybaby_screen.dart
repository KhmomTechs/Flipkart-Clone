import 'package:flutter/material.dart';

class ToyBabyScreen extends StatefulWidget {
  @override
  _ToyBabyScreenState createState() => _ToyBabyScreenState();
}

class _ToyBabyScreenState extends State<ToyBabyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toys & Baby")),
      body: Center(child: Text("Toys & Baby Screen")),
    );
  }
}
