import 'package:flutter/material.dart';
import 'package:place_guide/main.dart';
import 'package:place_guide/models/models.dart';

class AttractionCard extends StatelessWidget {
  AttractionModel? attractionModel;
  AttractionCard({super.key, this.attractionModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(attractionModel!.imgPath!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(attractionModel!.name!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(attractionModel!.location!,
                      style: TextStyle(color: mainYellow)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
