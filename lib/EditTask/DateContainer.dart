import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final String label;
  final String date;
  const DateContainer({super.key, required this.label, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      padding: EdgeInsets.all(10),
      width: 331,
      height: 63,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
            ),
            child:  Icon(Icons.calendar_month),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3),
              Text(label, style: TextStyle(fontSize: 9, color: Color(0XFF6E6A7C))),
              SizedBox(height: 3),
              Text(date, style: TextStyle(fontSize: 14, color: Color(0XFF24252C)))
            ],
          )
        ],
      ),
    );
  }
}
