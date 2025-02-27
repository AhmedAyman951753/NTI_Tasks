import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'MyButtons.dart';
import 'MyContainers.dart';
class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF3F5F4),
      appBar: AppBar(
        backgroundColor: Color(0XFFF3F5F4),
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Vector.svg')),
        title: Center(child: Text("Today Tasks")),
        actions: [
          MyButtons(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.symmetric(horizontal: 9),
            width: 70.0,
            height: 28.0,
            radius: 14.0,
            color: Color(0XFFCEEBDC),
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
                      color: Color(0XFF149954),
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
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                child: Row(
                  children: [
                    Text("Results"),
                    SizedBox(width: 50,),
                    MyButtons(width: 14,
                      height: 15,
                      color: Color(0XFFCEEBDC),
                      radius: 5,
                      child: Center(child: Text
                        ("5",
                          style: TextStyle
                            (color: Colors.green,
                             fontSize: 12,
                             fontWeight: FontWeight.bold),)),)
                  ],
                ),
              ),
              MyContainers(title: "Work Task",
                           iconData: SvgPicture.asset('assets/icons/bag.svg'),
                           iconColor: Colors.black,
                           buttonLabel: "Future",
                           buttonColor: Color(0XFFF3F5F4),
                           labelColor: Colors.black,
                           task: "Go to supermarket to buy some milk &\neggs",),
              SizedBox(height: 10),

              MyContainers(title: "Work Task",
                iconData: SvgPicture.asset('assets/icons/bag.svg'),
                iconColor: Colors.black,
                buttonLabel: "Done",
                buttonColor: Color(0XFF149954),
                labelColor: Colors.white,
                task: "Go to supermarket to buy some milk &\neggs",),
              SizedBox(height: 10),

              MyContainers(title: "Home Task",
                iconData: SvgPicture.asset('assets/icons/home.svg'),
                iconColor: Color(0XFFFF0084),
                buttonLabel: "Done",
                buttonColor: Color(0XFF149954),
                labelColor: Colors.white,
                task: "Add new feature for Do It app and\ncommit it",),
              SizedBox(height: 10),

              MyContainers(title: "Personal Task",
                iconData: SvgPicture.asset('assets/icons/person.svg'),
                iconColor: Color(0XFF149954),
                buttonLabel: "In Progress",
                buttonColor: Color(0XFFF3F5F4),
                labelColor: Colors.black,
                task: "Improve my English skills by trying to\nspeek",),
              SizedBox(height: 10),

              MyContainers(title: "Home Task",
                iconData: SvgPicture.asset('assets/icons/home.svg'),
                iconColor: Color(0XFFFF0084),
                buttonLabel: "Done",
                buttonColor: Color(0XFF149954),
                labelColor: Colors.white,
                task: "Add new feature for Do It app and\ncommit it",),

            ],
          ),
        ),
      ),
  );
  }
}