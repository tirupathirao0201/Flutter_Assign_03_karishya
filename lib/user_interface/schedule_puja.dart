import 'package:flutter/material.dart';
import 'package:flutter_assign3/user_interface/existing_customers.dart';
import 'package:flutter_assign3/widgets/generic_app_bar.dart';

class SchedulePuja extends StatefulWidget {
  const SchedulePuja({super.key});

  @override
  State<SchedulePuja> createState() => _SchedulePujaState();
}

class _SchedulePujaState extends State<SchedulePuja> {
  int? selecteTab = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Schedule a puja'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[
                  Colors.white,
                  Color.fromARGB(255, 249, 245, 162)
                ]),
            image: DecorationImage(
                image: AssetImage("assets/images/temple.png"),
                alignment: Alignment.bottomCenter,
                opacity: 1.0)),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(20, 23, 20, 23),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(2, 0, 0, 0),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/avatar.png"),
                    const Text("For New Customer",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color(0xff6a234f)))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExistingCustomers()));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(20, 23, 20, 23),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(2, 0, 0, 0),
                      )
                    ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/avatar.png"),
                      const Text("Existing Customer",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xff6a234f)))
                    ]),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffDF7900),
        selectedLabelStyle: const TextStyle(color: Color(0xffDF7900)),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: selecteTab!,
        onTap: (index) {
          setState(() {
            selecteTab = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
              ),
              label: "Booking"),
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_num_outlined), label: "Earning"),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Customers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fireplace_outlined), label: "Create Pooja")
        ],
      ),
    );
  }
}
