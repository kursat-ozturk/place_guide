import 'package:flutter/material.dart';
import 'package:place_guide/main.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Where do you',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('want to go?',
                  style: TextStyle(
                      color: mainYellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightGray,
            ),
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text('Search', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
