
import 'package:flexi_project/Screens/Bottom_Navigation/payments.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home/home-page.dart';
import 'User profile/user-profile.dart';
import 'contacts.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const ContactPage(),
    const Payments(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidAddressBook), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidCreditCard), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF07A2A4),
        unselectedItemColor: Color(0xFF8CE5F8),
        onTap: _onItemTapped,
      ),
      body: buildNavigator(),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}