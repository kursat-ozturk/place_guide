import 'package:flutter/material.dart';

class AttractionModel {
  String? imgPath;
  String? name;
  String? location;
  String? description;

  AttractionModel({
    this.imgPath,
    this.name,
    this.location,
    this.description,
  });
}

class BottomBarModel {
  IconData? icon;
  bool? isSelected;

  BottomBarModel({this.icon, this.isSelected});
}
