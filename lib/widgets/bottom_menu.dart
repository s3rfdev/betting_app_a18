import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../pages/home_page.dart';
import '../pages/matches_page.dart';
import '../pages/stat_page.dart';
import '../res/styles.dart';

class BottomMenu extends StatelessWidget {
  BottomMenu({super.key, required this.selectedIndex});
  int selectedIndex;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: blue1,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: red,
      unselectedItemColor: grey,
      onTap: (val) {
        if (val == 0) {
          Get.offAll(HomePage());
        }
        if (val == 1) {
          Get.offAll(MatchesPage());
        }
        if (val == 2) {
          Get.offAll(StatPage());
        }
      },
    );
  }
}
