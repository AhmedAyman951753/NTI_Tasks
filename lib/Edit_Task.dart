import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'MyButtons.dart';
class EditTask extends StatelessWidget {
  const EditTask({super.key});

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
            width: 80.0,
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
    );
  }
}
