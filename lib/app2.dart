import 'package:flutter/material.dart';
List<String> names = ["Ahmed" , "Mohamed"];
List<int> ages = [1,2,3];
class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<int>(hint: Text("Select your name"),
                                  iconEnabledColor: Colors.red,
                                  dropdownColor: Colors.green,
                                  menuWidth: 200.0,
                                  items: ages.map((int name){
                                    return DropdownMenuItem(
                                      value: name,
                                      child: Row(
                                        children: [
                                          Text(name.toString()),
                                          Icon(Icons.person)
                                        ],
                                      ),

                                  );
                             }).toList(),
                  onChanged: (value){print(value);})
            ],
          ),
          Container(child: Image.network("https://tinypng.com/static/images/boat.png")
    )


        ],
      ),
    );
    
  }
}