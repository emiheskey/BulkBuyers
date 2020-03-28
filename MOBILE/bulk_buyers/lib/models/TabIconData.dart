import 'package:flutter/material.dart';

class TabIconData{
  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;
  AnimationController animationController;

  TabIconData({
    this.imagePath = '',
    this.selectedImagePath = "",
    this.isSelected = false,
    this.index = 0
  });

  static List <TabIconData> tabIconsList = [
    TabIconData(
      imagePath: 'assets/images/icon-feather-home.png',
      selectedImagePath: 'assets/images/icon-feather-home-selected.png',
      index: 0,
      isSelected: true,
    ),
    TabIconData(
      imagePath: 'assets/images/icon-feather-shopping-cart.png',
      selectedImagePath: 'assets/images/icon-feather-shopping-cart-selected.png',
      index: 1,
      isSelected: true,
    ),
    TabIconData(
      imagePath: 'assets/images/icon-feather-heart.png',
      selectedImagePath: 'assets/images/icon-feather-heart-selected.png',
      index: 2,
      isSelected: true,
    ),
    TabIconData(
      imagePath: 'assets/images/iicon-feather-user.png',
      selectedImagePath: 'assets/images/icon-feather-user-selected.png',
      index: 4,
      isSelected: true,
    ),


  ];
}