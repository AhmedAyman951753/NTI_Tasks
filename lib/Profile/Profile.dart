import 'package:flutter/material.dart';
import 'package:flutter_application/AppIcons.dart';
import 'package:flutter_application/AppImages.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../AppColors.dart';
import 'OptionContainer.dart';
import 'DefaultContainer.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 277,
                child: Image.asset(AppImages.Palestine),
              ),
              SizedBox(height: 20),

              DefaultContainer(child: Row(
                children: [
                  Icon(Icons.person_2_outlined),
                  SizedBox(width: 10),
                  Expanded(child: Text("Update Profile")),
                  SvgPicture.asset(AppIcons.arrowForward)
                ],
              ),
            ),

              DefaultContainer(child: Row(
                children: [
                  SvgPicture.asset(AppIcons.history),
                  SizedBox(width: 10),
                  Expanded(child: Text("History"))
                ],
              ),
            ),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                width: 331,
                height: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white
                ),
                child: DropdownButton<String>(
                  hint: Text('Select an option', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal)),
                  borderRadius: BorderRadius.circular(14),
                  items: [DropdownMenuItem(value: 'Option1', child: OptionContainer(label: 'Hello!', option: 'Option1')),
                          DropdownMenuItem(value: 'Option2', child: OptionContainer(label: 'Hello!', option: 'Option2')),
                          DropdownMenuItem(value: 'Option3', child: OptionContainer(label: 'Hello!', option: 'Option3')),
                          DropdownMenuItem(value: 'Option4', child: OptionContainer(label: 'Hello!', option: 'Option4'))],
                  onChanged: (value){print(value);},
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  underline: Container(),// Custom dropdown icon
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

