import 'package:flutter/material.dart';
import 'package:flutter_application/AppColors.dart';
import 'package:flutter_application/TODO%20App/AddTask.dart';
import 'package:flutter_application/TODO%20App/Categories/ProfileAppBar.dart';
import 'package:flutter_svg/svg.dart';
import '../AppIcons.dart';

class NoTasks extends StatelessWidget {
  final String name;
  const NoTasks({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileAppBar(name: name),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("There are no tasks yet,\n     Press the button\n    To add New Task ")
            ],
          ),
          SizedBox(height: 20),
          IconButton(icon: SvgPicture.asset(AppIcons.notasks),
                     onPressed: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)
                       {
                         return AddTask(name: name);
                       }
                       ));
                     },)
        ],
      ),
    );
  }
}
