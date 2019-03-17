import 'package:flutter/material.dart';

class ExtraPlusScreen extends StatefulWidget {
  @override
  _ExtraPlusScreenState createState() => _ExtraPlusScreenState();
}

class _ExtraPlusScreenState extends State<ExtraPlusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flipkart Zone Plus"),
      ),
      body: Center(
          child: Text(
        "Extra Plus Screen",
        style: TextStyle(fontSize: 20.0),
      )),
    );
  }
}
