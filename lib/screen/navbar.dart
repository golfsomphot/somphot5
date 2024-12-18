import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:somphot5/screen/chatscreen.dart';

import 'package:somphot5/screen/historycount.dart';
import 'package:somphot5/screen/home.dart';
import 'package:somphot5/screen/listchat.dart';
import 'package:somphot5/screen/login.dart';
import 'package:somphot5/screen/setting.dart';
import 'package:somphot5/screen/stockcount.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      Historycount(),
      Stockcount(),
      Listchat(),
      Setting(logout: _logout),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("HomeScreen"),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Historycount"),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.photo_camera),
        title: ("Stockcount"),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat),
        title: ("Chat"),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  void _logout() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (Route<dynamic> route) => false,
    );
  }

  void _hideNavBar() {
    setState(() {
      _controller.index = -1; // ซ่อน NavBar โดยการตั้งค่าเป็น -1
    });
  }

  void _showNavBar() {
    setState(() {
      _controller.index = 0; // กลับมาแสดง NavBar
    });
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.black,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: false,
      stateManagement: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1.0),
        colorBehindNavBar: Colors.white,
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}
