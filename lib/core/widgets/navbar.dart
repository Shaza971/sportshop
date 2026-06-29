import 'package:flutter/material.dart';
import 'package:sportsapp/feature/home/home.dart';
import 'package:sportsapp/feature/profile/profile.dart';
import 'package:sportsapp/feature/settings/settings.dart';
import 'package:sportsapp/feature/shop/shop.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     currentIndex: 0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    showSelectedLabels: true,
    showUnselectedLabels: true,

    onTap: (index) {
      if (index == 0) {
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      }

      if (index == 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => shop(),
          ),
        );
      }

      if (index == 2) {
       Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => profile(),
          ),
        );
      }

      if (index == 3) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => settings(),
          ),
        );
      }
    },

    items:const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag_outlined),
      activeIcon: Icon(Icons.shopping_bag),
      label: "Shop",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: "Profile",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      activeIcon: Icon(Icons.settings),
      label: "Settings",
    ),
  ],
  );
}
  }