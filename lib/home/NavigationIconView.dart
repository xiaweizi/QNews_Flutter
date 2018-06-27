import 'package:flutter/material.dart';

class NavigationIconView {
  NavigationIconView({
    Widget icon,
    Widget title,
  }) : item = new BottomNavigationBarItem(
          icon: icon,
          title: title,
        );

  final BottomNavigationBarItem item;
}
