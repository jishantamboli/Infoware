import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

 Widget portfolio() => Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 20, 56),
                borderRadius: BorderRadius.circular(20)),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 350, top: 35),
                  child: Container(
                    height: 220,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)),
                    child: Center(
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 26,
                        alignment: WrapAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.app_badge_fill),
                          const Icon(
                            CupertinoIcons.paragraph,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.account_balance_rounded,
                            color: greenTheme,
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: greenTheme,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  "Portfolio",
                  style: TextStyle(
                      color: Color.fromARGB(255, 16, 78, 17),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60, left: 40),
                child: Text(
                  "\$12,131.32",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60, left: 200),
                child: Text(
                  "2.11%",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {},
                    child: Text("Deposite")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 130),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: Text("Withdraw")),
              )
            ]),
          ),
        ),
      );
