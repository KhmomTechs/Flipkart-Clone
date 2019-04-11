import 'package:flipkartclone/actions_icons/cart_screen.dart';
import 'package:flipkartclone/actions_icons/notification_screen.dart';
import 'package:flipkartclone/body_screen.dart';
import 'package:flipkartclone/drawer_content1.dart';
import 'package:flipkartclone/drawers_screens/extraplus_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ExtraPlusScreen())),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Flipkart",style: TextStyle(fontStyle: FontStyle.italic),),
                Text("Explore Plus+",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 10.0),)
              ],
            )
            ),
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationScreen())),
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen())),
            icon: Icon(Icons.shopping_cart),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10.0,vertical: 10.0
            ),
            color: Colors.white,
            height: 40.0,
            width: MediaQuery.of(context).size.width,
            child: Container(
//              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                    hintText: 'Search for Products,Brands and More'),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      drawer: Drawer(child: DrawerContents()),
      body: BodyScreen(),
    );
  }
}
