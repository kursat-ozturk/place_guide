import 'package:flutter/material.dart';
import 'package:place_guide/main.dart';
import 'package:place_guide/models/models.dart';
import 'package:place_guide/widgets/attraction_card.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        itemCount: attractions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          AttractionModel currentAttraction = attractions[index];
          return AttractionCard(attractionModel: currentAttraction);
        },
      ),
    );
  }
}
