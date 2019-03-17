import 'package:flutter/material.dart';

class FlightHotelScreen extends StatefulWidget {
  @override
  _FlightHotelScreenState createState() => _FlightHotelScreenState();
}

class _FlightHotelScreenState extends State<FlightHotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flights,Hotels & Bus")),
      body: Center(child: Text("Flights,Hotels & Bus Screen")),
    );
  }
}
