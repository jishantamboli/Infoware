import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BottomNavBar(){
  return BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green.shade900,
        selectedIconTheme: const IconThemeData(size: 46),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.swap_horizontal_circle_sharp,
              color: Colors.green,
              size: 50,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.slider_horizontal_3,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: '',
          ),
        ]);
}