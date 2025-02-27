import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Center(child: Text("data")),
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}


class CTest extends StatelessWidget
{
  List<String> countries = ["EG" , "USA" , "FR"];
  CTest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.separated(scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)
                  {
                    return DefCon(country: countries[index]);
                  },
                  separatorBuilder: (context, index)
                  {
                    return Divider();
                  },
                  itemCount: countries.length
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index)
                {
                  return DefCon(country: countries[index]);
                },
                separatorBuilder: (context, index)
                {
                  return Divider();
                },
                itemCount: countries.length
            ),
          ],
        )

    );
  }

}
class DefCon extends StatelessWidget {
  final String country;
  const DefCon({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){print("OnPressed");},
      onDoubleTap: (){print("DoubleTap");},
      onLongPress: (){print("LongPress");},
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 5),

        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(country),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(blurRadius: 2, color: Colors.pinkAccent,offset: Offset(-2, 2), spreadRadius: 2)
          ],
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Screen One"),
              ElevatedButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  User user = User("Ahmed" , 20);
                  return ScreenTwo(user: user);
                }
                ))
                ;print("Moving to screen two");
              },
                  child: Text("Moving"))
            ],
          ),
        )
    );
  }
}

class ScreenTwo extends StatelessWidget {
  final User user;
  const ScreenTwo({super.key , required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : ${user.name} \nAge : ${user.age}"),

          ],
        ),
      ),

    );
  }
}

class User
{
  final String name;
  final int age;
  User(this.name , this.age);
}