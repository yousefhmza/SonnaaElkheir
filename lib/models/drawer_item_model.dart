import 'package:flutter/cupertino.dart';

class DrawerItemModel {
  final String title;
  final IconData icon;
  final Function() onTap;
  final bool isTrailing;

  DrawerItemModel({
    required this.onTap,
    required this.title,
    required this.icon,
    required this.isTrailing,
  });
}
