import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBNB extends StatelessWidget {
  List<String> navigatedAddress = [
    "/home",
    "/ranking",
    "/original",
    "/search",
  ];

  int selectedIndex;

  CustomBNB({this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          // Navigator.pushNamed(context, navigatedAddress[index]);
          Navigator.pushNamedAndRemoveUntil(
              context, navigatedAddress[index], (r) => false);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartArea),
            label: "ranking",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.warehouse),
            label: "original",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: "search",
          ),
        ]);
  }
}
