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
    return Divider(
      color: Colors.black54,
    );
  }

  Widget tiles(String title, IconData icons, Widget widget) {
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
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => widget));
          },
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
        tiles("Flipkart Plus Zone", Icons.add, ExtraPlusScreen()),
        divider(),
        tiles("Electronics", Icons.smartphone, ElectronicsScreen()),
        tiles("TVs & Appliances", Icons.tv, TvAppliancesScreen()),
        tiles("Fashion", Icons.beach_access, FashionScreen()),
        tiles("Home and Furniture", Icons.shop, HomeFurnitureScreen()),
        tiles("Toys and Baby", Icons.person_add, ToyBabyScreen()),
        tiles("Beauty and Personal care", Icons.label_important,
            BeautyPersonalScreen()),
        tiles("Sports,Books and More", Icons.book, SportsBookScreen()),
        tiles(
            "Refurbished Products", Icons.report_problem, RefurbishedScreen()),
        tiles("Recharges", Icons.account_balance, RechargesScreen()),
        tiles(
            "Flights,Hotels & Bus", Icons.flight_takeoff, FlightHotelScreen()),
        divider(),
        tiles("Offer Zone", Icons.panorama_horizontal, OfferZoneScreen()),
        tiles("Game Zone", Icons.gamepad, GameScreen()),
        tiles("Notifications", Icons.notifications, NotificationScreen()),
        tiles("Sell on Flipkart", Icons.select_all, SellScreen()),
        divider(),
        tiles("My Orders", Icons.not_listed_location, OrderScreen()),
        tiles("My Rewards", Icons.fast_rewind, RewardsScreen()),
        tiles("My Cart", Icons.shopping_cart, CartScreen()),
        tiles("My Wishlist", Icons.wallpaper, WishlistScreen()),
        tiles("My Account", Icons.account_balance, AccountScreen()),
        divider(),
        tiles("Notification Preferences", Icons.notifications,
            NotificationPreferences()),
        tiles("Gift Card", Icons.card_giftcard, GiftScreen()),
        tiles("My Chats", Icons.chat, ChatScreen()),
        tiles("Help Centre", Icons.help, HelpScreen()),
        tiles("Legal", Icons.poll, LegalScreen()),
      ],
    );
  }
}
