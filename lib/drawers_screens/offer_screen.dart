import 'package:flutter/material.dart';

class OfferZoneScreen extends StatefulWidget {
  @override
  _OfferZoneScreenState createState() => _OfferZoneScreenState();
}

class _OfferZoneScreenState extends State<OfferZoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offer Zone")),
      body: Center(child: Text("Offer Zone Screen")),
    );
  }
}
