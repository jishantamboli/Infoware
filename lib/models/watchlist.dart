import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infoware/homepage.dart';

Widget Watchlist() {
  return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [data(), data(), data(), data()],
        ),
      );
}

 Widget data() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 220,
          width: 280,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Colors.grey.shade300)),
          child: Stack(
            children: [
             const Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Icon(
                    Icons.door_back_door_rounded,
                    size: 30,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 55),
                child: Text("ADB",
                    style: TextStyle(
                      color: greenTheme,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
             const Padding(
                padding: EdgeInsets.only(top: 50, left: 55),
                child: Text("Adobe Inc",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 180),
                child: Text("2.77%",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 150),
                child: Icon(
                  CupertinoIcons.chart_bar_alt_fill,
                  size: 100,
                  color: greenTheme,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 20),
                child: Text(
                  "33.49",
                  style: TextStyle(
                      color: greenTheme,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(top: 140, left: 20),
                child: Text(
                  "\$643.43",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      );