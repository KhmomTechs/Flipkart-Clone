import 'package:flipkartclone/actions_icons/cart_screen.dart';
import 'package:flipkartclone/actions_icons/notification_screen.dart';
import 'package:flipkartclone/drawer_content1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flipkart",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue
//        primaryColor: Color(
// 0xff047BD5),
          ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerContents(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Image.asset(
              "assets/flipkartlogo.png",
              width: 100.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.colorBurn,
            ),
            floating: true,
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height / 5.7,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25.0,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 25.0,
                ),
              )
            ],
            bottom: PreferredSize(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle,
//                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search for Products, Brands and More",
                              hintStyle: TextStyle(
                                  color: Colors.grey[600], fontSize: 14.0),
                              icon: Icon(
                                Icons.search,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                preferredSize: Size(20.0, 20.0)),
          ),
        ],
      ),
    );
  }
}
