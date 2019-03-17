import 'package:flutter/material.dart';

class TvAppliancesScreen extends StatefulWidget {
  @override
  _TvAppliancesScreenState createState() => _TvAppliancesScreenState();
}

class _TvAppliancesScreenState extends State<TvAppliancesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tv & Appliances")),
      body: Center(child: Text("Tv & Appliances Screen")),
    );
  }
}
