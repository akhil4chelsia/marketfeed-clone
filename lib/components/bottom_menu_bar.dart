import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  final int currentTab;
  final Function onTap;

  BottomMenuBar({this.currentTab, this.onTap});

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentTab,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Market',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Advisory',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart),
          label: 'Screener',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dynamic_feed),
          label: 'Feed',
        ),
      ],
    );
  }
}
