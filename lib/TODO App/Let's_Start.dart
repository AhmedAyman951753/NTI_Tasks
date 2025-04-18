import 'package:flutter/material.dart';
import 'package:flutter_application/TODO%20App/Profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../AppIcons.dart';
import '../AppColors.dart';
import '../EditTask/MyElevatedButton.dart';
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: 302,
            height: 343,
            child: SvgPicture.asset(AppIcons.todo),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome To\n      Do It", style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ready to conquer your tasks? Let's Do \n                      It together.", style: TextStyle(color: Color(0XFF6E6A7C)),)
            ],
          ),
          SizedBox(height: 20),
          Elevbutton(label: "Let's Start",
                     borderColor: AppColors.green,
                     buttonColor: AppColors.green,
                     textColor: Colors.white,
                     shadowColor: AppColors.green,
                     onPressed: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)
                       {
                         return TodoProfile();
                       }
                       ));
                     },)
        ],

      ),

    );
  }
}
