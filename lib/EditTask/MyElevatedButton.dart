import 'package:flutter/material.dart';

class Elevbutton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;
  final Color shadowColor;
  const Elevbutton({super.key, required this.label, required this.borderColor, required this.buttonColor, required this.textColor, required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [BoxShadow(color: shadowColor, spreadRadius: 1, blurRadius: 3, offset: Offset(0, 2))]
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: const Size(331, 52),
          backgroundColor: buttonColor,
          side: BorderSide(color: borderColor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),),
          onPressed: (){}, child: Text(label, style: TextStyle(color: textColor),)
      ),
    );
  }
}
