import 'package:flutter/material.dart';
import 'package:infoware/main.dart';
import 'package:infoware/models/bottomnavbar.dart';
import 'package:infoware/models/portfolio.dart';
import 'package:infoware/models/stockact.dart';
import 'package:infoware/models/watchlist.dart';

Color greenTheme = Color.fromARGB(255, 3, 20, 56);

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int _selectedIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> Onrefresh() async {
    await Future.delayed(Duration(seconds: 1));
    // LoadData();
    MyApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.swap_horizontal_circle_outlined,
          color: greenTheme,
          size: 36,
        ),
        title: Text(
          "Alex Julia",
          style: TextStyle(color: greenTheme, fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: greenTheme,
              size: 38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: greenTheme,
              size: 38,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: RefreshIndicator(
        color: greenTheme,
        onRefresh: Onrefresh,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // First container called portfolio.
              portfolio(),
              Padding(padding: const EdgeInsets.all(28.0), child: seeAll()),

              // Watchlist content is here
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Watchlist(),
              ),

              // Stock activity...
              Padding(
                padding: EdgeInsets.all(28.0),
                child: Text(
                  "Stock Activity",
                  style: TextStyle(
                      color: greenTheme,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              stockActivity(),
            ],
          ),
        ),
      ),
    );
  }

  Widget seeAll() => Row(
        children: [
          Text(
            "WatchList",
            style: TextStyle(
                color: greenTheme, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Text("see all",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ],
      );
}
