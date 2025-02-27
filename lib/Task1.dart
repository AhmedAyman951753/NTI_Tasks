import 'package:flutter/material.dart';

class Task1 extends StatelessWidget
{
  const Task1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text('Task1')),
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 30.0
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.settings)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello World", style: TextStyle(fontSize: 40.0))
            ],
          ),
          Icon(Icons.celebration),
        ],
      ),
    );
  }
}