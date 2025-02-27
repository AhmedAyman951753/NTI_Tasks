import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatelessWidget {
  final Color IconColor;
  final SvgPicture iconData;
  const MyIcon({required this.IconColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: IconColor,
      ),
      child: iconData,
    );
  }
}
