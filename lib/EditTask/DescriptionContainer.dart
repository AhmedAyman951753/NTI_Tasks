import 'package:flutter/material.dart';
class DescriptionContainer extends StatelessWidget {
  final double height;
  final String label;
  final String data;
  const DescriptionContainer({super.key, required this.height, required this.label, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      padding: EdgeInsets.all(10),
      width: 331,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Color(0XFF6E6A7C), fontSize: 9)),
          SizedBox(height: 2),
          Text(data, style: TextStyle(fontSize: 14, color: Color(0XFF24252C)))
        ],
      ),
    );
  }
}
