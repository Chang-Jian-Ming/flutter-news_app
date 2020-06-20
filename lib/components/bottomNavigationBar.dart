import 'package:flutter/material.dart';

Widget bottomNavBar(BuildContext context, int currentIndex) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.live_tv),
        title: Text('Live'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.report),
        title: Text('Report'),
      ), 
    ],
    currentIndex: currentIndex,
    selectedItemColor: Theme.of(context).buttonColor,
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.pushNamed(context, "/live");
          break;
        case 1:
          Navigator.pushNamed(context, "/");
          break;
        case 2:
          Navigator.pushNamed(context, "/report");
          break;
        default:
          Navigator.pushNamed(context, "/");
          break;
      }
    },
  );
}