import 'package:flutter/material.dart';
import 'package:wecycle/Screens/Chat_Screen/chats_screen_concept.dart';
import 'Chat_Screen/chats_screen_concept.dart';
import 'Home_PageScreen/homepage.dart';
import 'Orders_Screen/orders_screen.dart';
import 'Post_Screen/postscreen.dart';
import 'Profile_Screen/profilescreen.dart';
import 'package:wecycle/Screens/Extensions/globals.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pagelist = <Widget>[
    HomePage(),
    ChatScreenConcept(),
    PostScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  @protected
  @mustCallSuper
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: pagelist[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: greenColor),
        selectedItemColor: greenColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.art_track_rounded),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
