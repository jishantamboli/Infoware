import 'package:flutter/material.dart';

import '../homepage.dart';

Widget stockActivity() => Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 120,
          width: 480,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey.shade300)),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Icon(
                Icons.navigation_rounded,
                color: greenTheme,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 40),
              child: Text(
                "NVDA",
                style: TextStyle(
                    color: greenTheme,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 80, top: 75),
              child: Text("Nvidia"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240, top: 40),
              child: Text(
                "25.94",
                style: TextStyle(
                    color: greenTheme,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 240, top: 75),
              child: Text("0.14%"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 360, top: 40),
              child: Text(
                "\$277.32",
                style: TextStyle(
                    color: greenTheme,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 360, top: 75),
              child: Text("10 Shares"),
            ),
          ]),
        ),
      );