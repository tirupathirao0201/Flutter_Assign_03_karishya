import 'package:flutter/material.dart';
class SchedulePuja extends StatefulWidget {
  const SchedulePuja({super.key});

  @override
  State<SchedulePuja> createState() => _SchedulePujaState();
}

class _SchedulePujaState extends State<SchedulePuja> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A234F),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Schedule a Puja",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
        ),
        actions: <Widget> [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,size: 30,)
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,size: 30,))
        ],
      ),
      body:  Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.fromLTRB(20, 23, 20, 23),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/avatar.png"),
                const Text("For New Customer",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xff6a234f)
                    )
                )
              ],
            ),
          ),
          Container(
            
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.fromLTRB(20, 23, 20, 23),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Image.asset("assets/images/avatar.png"),
                const Text("Existing Customer",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xff6a234f)
                    )
                )
              ]
            ),
          )
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.book_online),label:"Booking"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "calender")
      ]),
    );
  }
}