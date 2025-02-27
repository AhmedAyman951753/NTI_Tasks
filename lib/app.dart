import 'package:flutter/material.dart';


class Task extends StatelessWidget
{
  const Task({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            //onChanged: (String? name) {print(name);},
            onFieldSubmitted: (String? name) {print(name);},
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0) , borderSide: BorderSide(width: 5.0 , color: Colors.black)
              ),
              hintText: "Enter your name : ",
              labelText: "Name",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(),
                  shadowColor: Colors.blue
              ),
              onPressed: (){print("OnPressed");}, child: Text("data")),
          MaterialButton(onPressed: (){print("OnPressed");} ,shape:  CircleBorder()),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue

              ),
              onPressed: (){print("OnPressed");}, child: Text("data")),
          IconButton(onPressed: (){print("OnPressed");}, icon: Icon(Icons.keyboard), style: IconButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder()
          ),)
        ],
      ),

    );
  }
}
