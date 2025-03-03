import 'package:flutter/material.dart';
import 'package:flutter_application/AppColors.dart';
import 'package:flutter_application/TODO%20App/Categories/TextContainer.dart';
import '../../../EditTask/MyElevatedButton.dart';
class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Center(child: Text("Register")),
      ),
      body: Column(
        children: [
          TextContainer(label: "Name", hint: "Enter your name"),
          TextContainer(label: "Age", hint: "Enter your age"),
          TextContainer(label: "Email", hint: "Enter your email"),
          TextContainer(label: "Password", hint: "Enter your password"),
          Elevbutton(label: "Save", borderColor: AppColors.green, buttonColor: AppColors.green, textColor: AppColors.white, shadowColor: AppColors.green, onPressed: (){})
        ],
      ),
    );
  }
}
