import 'package:flipkartclone/drawers_screens/beauty_screen.dart';
import 'package:flipkartclone/drawers_screens/electronics_screen.dart';
import 'package:flipkartclone/drawers_screens/fashion_screen.dart';
import 'package:flipkartclone/drawers_screens/flighthotel_screen.dart';
import 'package:flipkartclone/drawers_screens/offer_screen.dart';
import 'package:flipkartclone/drawers_screens/rewards_screen.dart';
import 'package:flipkartclone/drawers_screens/sportsbook_screen.dart';
import 'package:flipkartclone/drawers_screens/toybaby_screen.dart';
import 'package:flipkartclone/drawers_screens/tvappliances_screen.dart';
import 'package:flipkartclone/first_body_screens/mobile_screen.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  Widget firstList(String imageVal, String text) {
    return Container(
      width: 60.0,
      child: Column(
        children: <Widget>[
          Card(
            child: Image.asset(imageVal),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 6.0),
          height:70.0,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              firstList('assets/pixel1.jpeg', 'Offer Zone'),
              firstList('assets/pixel1.jpeg', 'Mobiles'),
              firstList('assets/pixel1.jpeg', 'Fashion'),
              firstList('assets/pixel1.jpeg', 'Electronics'),
              firstList('assets/pixel1.jpeg', 'Home'),
              firstList('assets/pixel1.jpeg', 'Beauty'),
              firstList('assets/pixel1.jpeg', 'Appliances'),
              firstList('assets/pixel1.jpeg', 'Toys&Baby'),
            ],
          ),
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: EdgeInsets.all(10.0),
            child: Carousel(
              showIndicator: false,
              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/pixel1.jpeg'),
                AssetImage('assets/pixels.jpeg'),
                AssetImage('assets/pixel1.jpeg'),
                AssetImage('assets/pixels.jpeg'),
              ],
            ),
          ),
        ),

//        Container(
//          height: 300.0,
//          width: MediaQuery.of(context).size.width,
//          color: Colors.blue,
//          child: Row(
//            children: <Widget>[
//              Column(
//                children: <Widget>[
//                  Padding(padding: EdgeInsets.only(top: 10.0),),
//                  Text("Deals of the Day",style: TextStyle(color: Colors.white),),
//                  Padding(padding: EdgeInsets.only(top: 10.0),),
//                  Text("16h 40m remaining",style: TextStyle(color: Colors.white)),
//                ],
//              ),
//
//            ],
//          ),
//        )
      ],
    );
  }
}
