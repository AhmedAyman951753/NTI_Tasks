import 'package:flutter/material.dart';
import 'MyButtons.dart';
import '../AppColors.dart';
class TaskCounter extends StatelessWidget {
  final String label;
  final int number;
  const TaskCounter({super.key, required this.label, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 20),
      child: Row(
        children: [
          Text(label),
          SizedBox(width: 50,),
          MyButtons(width: 14,
            height: 15,
            color: AppColors.semiGreen,
            radius: 5,
            child: Center(child: Text
              (number.toString(),
              style: TextStyle
                (color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),)),)
        ],
      ),
    );
  }
}
