import 'package:flutter/material.dart';

class DrawerContents extends StatefulWidget {
  @override
  _DrawerContentsState createState() => _DrawerContentsState();
}

class _DrawerContentsState extends State<DrawerContents> {
  Widget divider() {
    return Divider();
  }

  Widget tiles(String title, IconData icons, Function fun) {
    return Container(
      height: MediaQuery.of(context).size.height *0.06,
      alignment: AlignmentDirectional.topStart,
//      height: MediaQuery.of(context).size.height * 0.055,
      child: FlatButton.icon(
          onPressed: fun(),
          icon: Padding(
            padding: const EdgeInsets.only(top : 11.0),
            child: Icon(
              icons,
              color: Colors.black54,
//            size: MediaQuery.of(context).size.height * 0.03,
            ),
          ),
          label: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
//            height: MediaQuery.of(context).size.height * 0.08,
            color: Theme.of(context).primaryColor,
            child: FlatButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ))),
        tiles("Flipkart Plus Zone", Icons.add, () => print("hello")),
        divider(),
        tiles("Electronics", Icons.smartphone, () => print("hello")),
        tiles("TVs & Appliances", Icons.tv, () => print("hello")),
        tiles("Fashion", Icons.title, () => print("hello")),
        tiles("Home and Furniture", Icons.title, () => print("hello")),
        tiles("Toys and Baby", Icons.access_alarm, () => print("hello")),
        tiles("Beauty and Personal care", Icons.access_alarm,
            () => print("hello")),
        tiles(
            "Sports,Books and More", Icons.access_alarm, () => print("hello")),
        tiles("Refurbished Products", Icons.access_alarm, () => print("hello")),
        tiles("Recharges", Icons.access_alarm, () => print("hello")),
        tiles("Flights,Hotels & Bus", Icons.access_alarm, () => print("hello")),
        divider(),
        tiles("Offer Zone", Icons.access_alarm, () => print("hello")),
        tiles("Game Zone", Icons.access_alarm, () => print("hello")),
        tiles("Notifications", Icons.access_alarm, () => print("hello")),
        tiles("Sell on Flipkart", Icons.access_alarm, () => print("hello")),
        divider(),
        tiles("My Orders", Icons.access_alarm, () => print("hello")),
        tiles("My Rewards", Icons.access_alarm, () => print("hello")),
        tiles("My Cart", Icons.access_alarm, () => print("hello")),
        tiles("My Wishlist", Icons.access_alarm, () => print("hello")),
        tiles("My Account", Icons.access_alarm, () => print("hello")),
        divider(),
        tiles("Notification Preferences", Icons.access_alarm,
            () => print("hello")),
        tiles("Gift Card", Icons.access_alarm, () => print("hello")),
        tiles("My Chats", Icons.access_alarm, () => print("hello")),
        tiles("Help Centre", Icons.access_alarm, () => print("hello")),
        tiles("Legal", Icons.access_alarm, () => print("hello")),
      ],
    );
  }
}
