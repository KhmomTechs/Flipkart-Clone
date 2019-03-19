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
import 'package:flutter/material.dart';

class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  Widget MyList(String imageVal, String text, Widget widget) {
    return Container(
      margin: EdgeInsets.only(top: 6.0),
      width: 80.0,
      child: GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget)),
        child: Card(
          child: Wrap(
            children: <Widget>[
              Image.asset(imageVal),
              Text(
                text,
                style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyList('assets/pixels.jpeg', 'Offer Zone', OfferZoneScreen()),
            MyList('assets/pixels.jpeg', 'Mobile', MobileScreen()),
            MyList('assets/pixels.jpeg', 'Fashion', FashionScreen()),
            MyList('assets/pixels.jpeg', 'Electronics', ElectronicsScreen()),
            MyList('assets/pixels.jpeg', 'Home', RewardsScreen()),
            MyList('assets/pixels.jpeg', 'Beauty', BeautyPersonalScreen()),
            MyList('assets/pixels.jpeg', 'Appliances', TvAppliancesScreen()),
            MyList('assets/pixels.jpeg', 'Toys & Baby', ToyBabyScreen()),
            MyList('assets/pixels.jpeg', 'Travel', FlightHotelScreen()),
            MyList('assets/pixels.jpeg', 'Sports & more', SportsBookScreen()),
          ],
        ));
  }
}
