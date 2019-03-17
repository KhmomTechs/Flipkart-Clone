import 'package:flipkartclone/actions_icons/cart_screen.dart';
import 'package:flipkartclone/actions_icons/notification_screen.dart';
import 'package:flipkartclone/drawers_screens/electronics_screen.dart';
import 'package:flipkartclone/drawers_screens/extraplus_screen.dart';
import 'package:flutter/material.dart';
import 'package:flipkartclone/drawers_screens/account_screen.dart';
import 'package:flipkartclone/drawers_screens/beauty_screen.dart';
import 'package:flipkartclone/drawers_screens/chat_screen.dart';
import 'package:flipkartclone/drawers_screens/fashion_screen.dart';
import 'package:flipkartclone/drawers_screens/flighthotel_screen.dart';
import 'package:flipkartclone/drawers_screens/game_screen.dart';
import 'package:flipkartclone/drawers_screens/gift_screen.dart';
import 'package:flipkartclone/drawers_screens/help_screen.dart';
import 'package:flipkartclone/drawers_screens/homefurniture_screen.dart';
import 'package:flipkartclone/drawers_screens/legal_screen.dart';
import 'package:flipkartclone/drawers_screens/notificationprefer_screen.dart';
import 'package:flipkartclone/drawers_screens/offer_screen.dart';
import 'package:flipkartclone/drawers_screens/order_screen.dart';
import 'package:flipkartclone/drawers_screens/recharges_screen.dart';
import 'package:flipkartclone/drawers_screens/refurbished_screen.dart';
import 'package:flipkartclone/drawers_screens/rewards_screen.dart';
import 'package:flipkartclone/drawers_screens/sell_screen.dart';
import 'package:flipkartclone/drawers_screens/sportsbook_screen.dart';
import 'package:flipkartclone/drawers_screens/toybaby_screen.dart';
import 'package:flipkartclone/drawers_screens/tvappliances_screen.dart';
import 'package:flipkartclone/drawers_screens/wishlist_screen.dart';

class DrawerContents extends StatefulWidget {
  @override
  _DrawerContentsState createState() => _DrawerContentsState();
}

class _DrawerContentsState extends State<DrawerContents> {
  Widget divider() {
    return Divider();
  }

  Widget tiles(String title, IconData icons) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      alignment: AlignmentDirectional.topStart,
//      height: MediaQuery.of(context).size.height * 0.055,
      child: FlatButton.icon(
          icon: Padding(
            padding: const EdgeInsets.only(top: 11.0),
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
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExtraPlusScreen()));
            },
            child: tiles("Flipkart Plus Zone", Icons.add)),
        divider(),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ElectronicsScreen()));
          },
          child: tiles(
            "Electronics",
            Icons.smartphone,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TvAppliancesScreen()));
          },
          child: tiles(
            "TVs & Appliances",
            Icons.tv,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FashionScreen()));
          },
          child: tiles(
            "Fashion",
            Icons.beach_access,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeFurnitureScreen()));
          },
          child: tiles(
            "Home and Furniture",
            Icons.shop,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToyBabyScreen()));
          },
          child: tiles(
            "Toys and Baby",
            Icons.person_add,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BeautyPersonalScreen()));
          },
          child: tiles(
            "Beauty and Personal care",
            Icons.label_important,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SportsBookScreen()));
          },
          child: tiles(
            "Sports,Books and More",
            Icons.book,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RefurbishedScreen()));
          },
          child: tiles(
            "Refurbished Products",
            Icons.report_problem,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RechargesScreen()));
          },
          child: tiles(
            "Recharges",
            Icons.account_balance,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FlightHotelScreen()));
          },
          child: tiles(
            "Flights,Hotels & Bus",
            Icons.flight_takeoff,
          ),
        ),
        divider(),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OfferZoneScreen()));
          },
          child: tiles(
            "Offer Zone",
            Icons.panorama_horizontal,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GameScreen()));
          },
          child: tiles(
            "Game Zone",
            Icons.gamepad,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationScreen()));
          },
          child: tiles(
            "Notifications",
            Icons.notifications,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SellScreen()));
          },
          child: tiles(
            "Sell on Flipkart",
            Icons.select_all,
          ),
        ),
        divider(),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderScreen()));
          },
          child: tiles(
            "My Orders",
            Icons.not_listed_location,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RewardsScreen()));
          },
          child: tiles(
            "My Rewards",
            Icons.fast_rewind,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: tiles(
            "My Cart",
            Icons.shopping_cart,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WishlistScreen()));
          },
          child: tiles(
            "My Wishlist",
            Icons.wallpaper,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountScreen()));
          },
          child: tiles(
            "My Account",
            Icons.account_balance,
          ),
        ),
        divider(),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NotificationPreferences()));
          },
          child: tiles(
            "Notification Preferences",
            Icons.notifications,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GiftScreen()));
          },
          child: tiles(
            "Gift Card",
            Icons.card_giftcard,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatScreen()));
          },
          child: tiles(
            "My Chats",
            Icons.chat,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HelpScreen()));
          },
          child: tiles(
            "Help Centre",
            Icons.help,
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LegalScreen()));
            },
            child: tiles("Legal", Icons.poll)),
      ],
    );
  }
}
