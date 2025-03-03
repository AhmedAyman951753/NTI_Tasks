import 'package:flutter/material.dart';
import 'package:flutter_application/HomeScreen/TaskCounter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'MyButtons.dart';
import 'MyContainers.dart';
import '../AppIcons.dart';
import '../AppColors.dart';
class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.arrowBack)),
        title: Center(child: Text("Today Tasks")),
        actions: [
          MyButtons(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.symmetric(horizontal: 9),
            width: 70.0,
            height: 28.0,
            radius: 14.0,
            color: AppColors.semiGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                Text("Add", style: TextStyle(color: Colors.black , fontSize: 12))
              ],
            ),
            )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 340,
                height: 28,
                child: Row(
                  children: [
                    MyButtons(margin: EdgeInsets.only(left: 8),
                      width: 70.0,
                      height: 28.0,
                      color: AppColors.green,
                      radius: 14.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("All",
                                style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12))
                        ],
                      ),
                    ),
                    MyButtons(margin: EdgeInsets.only(left: 8),
                      width: 70.0,
                      height: 28.0,
                      radius: 14.0,
                      border: Border.all(color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Future",
                                style: TextStyle(color: Colors.black,
                                fontSize: 12))
                        ],
                      ),
                    ),
                    MyButtons(margin: EdgeInsets.only(left: 8),
                      width: 70.0,
                      height: 28.0,
                      radius: 14.0,
                      border: Border.all(color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Missed",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    MyButtons(margin: EdgeInsets.only(left: 8),
                      width: 70.0,
                      height: 28.0,
                      radius: 14.0,
                      border: Border.all(color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Done",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                  ],
                )
              ),
              TaskCounter(label: "Results", number: 5),

              MyContainers(title: "Work Task",
                           iconData: SvgPicture.asset(AppIcons.bag),
                           iconColor: Colors.black,
                           buttonLabel: "Future",
                           buttonColor: AppColors.primary,
                           labelColor: Colors.black,
                           task: "Go to supermarket to buy some milk &\neggs",),
              SizedBox(height: 10),

              MyContainers(title: "Work Task",
                iconData: SvgPicture.asset(AppIcons.bag),
                iconColor: Colors.black,
                buttonLabel: "Done",
                buttonColor: AppColors.green,
                labelColor: Colors.white,
                task: "Go to supermarket to buy some milk &\neggs",),
              SizedBox(height: 10),

              MyContainers(title: "Home Task",
                iconData: SvgPicture.asset(AppIcons.home),
                iconColor: AppColors.pink,
                buttonLabel: "Done",
                buttonColor: AppColors.green,
                labelColor: Colors.white,
                task: "Add new feature for Do It app and\ncommit it",),
              SizedBox(height: 10),

              MyContainers(title: "Personal Task",
                iconData: SvgPicture.asset(AppIcons.person),
                iconColor: AppColors.green,
                buttonLabel: "In Progress",
                buttonColor: AppColors.primary,
                labelColor: Colors.black,
                task: "Improve my English skills by trying to\nspeak",),
              SizedBox(height: 10),

              MyContainers(title: "Home Task",
                iconData: SvgPicture.asset(AppIcons.home),
                iconColor: AppColors.pink,
                buttonLabel: "Done",
                buttonColor: AppColors.green,
                labelColor: Colors.white,
                task: "Add new feature for Do It app and\ncommit it",),
            ],
          ),
        ),
      ),
  );
  }
}