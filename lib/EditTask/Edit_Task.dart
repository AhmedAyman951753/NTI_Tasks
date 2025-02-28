import 'package:flutter/material.dart';
import 'package:flutter_application/AppColors.dart';
import 'package:flutter_application/AppIcons.dart';
import 'package:flutter_svg/svg.dart';
import '../HomeScreen/MyButtons.dart';
import 'DateContainer.dart';
import 'DescriptionContainer.dart';
import 'MyElevatedButton.dart';
class EditTask extends StatelessWidget {
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF3F5F4),
      appBar: AppBar(
        backgroundColor: Color(0XFFF3F5F4),
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.arrowBack)),
        title: Center(child: Text("Edit Task")),
        actions: [
          MyButtons(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.symmetric(horizontal: 9),
            width: 80.0,
            height: 28.0,
            radius: 14.0,
            color: AppColors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppIcons.recycle),
                SizedBox(width: 4),
                Text("Delete", style: TextStyle(color: Colors.white , fontSize: 12))
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Text("In Progress\nBelieve you can, and you're halfway there.")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
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
                        color: Color(0XFFFFE4F2),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:  SvgPicture.asset(AppIcons.home2),
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        SizedBox(height: 3),
                        Text("Task Group", style: TextStyle(fontSize: 9, color: Color(0XFF6E6A7C))),
                        SizedBox(height: 3),
                        Text("Home", style: TextStyle(fontSize: 14, color: Color(0XFF24252C)))
                      ],
                    )
                  ],
                ),
              ),
              DescriptionContainer(height: 63, label: "Task Name", data: "Grocery Shopping App"),
              DescriptionContainer(height: 142, label: "Description", data: "Go for grocery to buy some products. Go for\ngrocery to buy some products. Go for grocery\nto buy some products. Go for grocery to buy\nsome products."),
              DateContainer(label: "Start Date", date: "01 May,  2022 10:00 am"),
              DateContainer(label: "End Date", date: "30 June,  2022 10:00 am"),
              Elevbutton(label: "Mark as Done", buttonColor: AppColors.green, textColor: Colors.white, borderColor: AppColors.green, shadowColor: Colors.black,),
              SizedBox(height: 15),
              Elevbutton(label: "Update", buttonColor: Colors.white, textColor: AppColors.green, borderColor: AppColors.green, shadowColor: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
