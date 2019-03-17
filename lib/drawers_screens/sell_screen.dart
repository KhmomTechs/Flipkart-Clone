import 'package:flutter/material.dart';

class SellScreen extends StatefulWidget {
  @override
  _SellScreenState createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sell on Flipkart")),
      body: Center(child: Text("Sell on Flipkart Screen")),
    );
  }
}
