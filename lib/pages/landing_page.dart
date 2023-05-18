import 'package:flutter/material.dart';
import 'package:place_guide/main.dart';

import '../widgets/attraction_listview.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/header_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: IconThemeData(color: mainYellow),
        title: Center(
          child: Icon(Icons.airplanemode_on, color: mainYellow),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.notifications_on_outlined, color: Colors.grey),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: mainYellow,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          child: Icon(Icons.airplanemode_on, size: 80, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryGray,
              secondaryGray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(),
            AttractionListView(),
            BottomBarWidget(),
          ],
        ),
      ),
    );
  }
}
