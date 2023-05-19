import 'package:flutter/material.dart';
import 'package:place_guide/main.dart';

import '../models/models.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final List<BottomBarModel> _bottomBarItems = bottomBarListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_bottomBarItems.length, (index) {
          var barItemWidget = _bottomBarItems[index];
          return IconButton(
            icon: Icon(
              barItemWidget.icon,
              color: barItemWidget.isSelected! ? mainYellow : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                for (var element in _bottomBarItems) {
                  element.isSelected = element == barItemWidget;
                }
              });
            },
          );
        }),
      ),
    );
  }
}
