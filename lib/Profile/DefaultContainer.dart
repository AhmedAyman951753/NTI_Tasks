import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final Widget? child;
  const DefaultContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        padding: EdgeInsets.all(15),
        width: 331,
        height: 63,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14)),
      child: child
        );
  }
}
