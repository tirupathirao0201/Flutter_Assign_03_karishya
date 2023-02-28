import 'package:flutter/material.dart';
import 'package:flutter_assign3/widgets/generic_customer_details.dart';

class ExistingCustomers extends StatefulWidget {
  const ExistingCustomers({super.key});

  @override
  State<ExistingCustomers> createState() => _ExistingCustomersState();
}

class _ExistingCustomersState extends State<ExistingCustomers> {
  onTap() {}

  @override
  Widget build(BuildContext context) {
    // New comment for optimize branch
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF6A234F),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "Existing Customers",
            style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
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
            children: <GenericCustomerDetails>[
              GenericCustomerDetails(
                  customerLocation: "Gachibowli",
                  customerName: "Ramesh Verma",
                  customerProfile: "assets/images/profile.png",
                  onTap: () => onTap()),
              GenericCustomerDetails(
                  customerLocation: "Gachibowli",
                  customerName: "Ramesh Verma",
                  customerProfile: "assets/images/profile.png",
                  onTap: () => onTap()),
              GenericCustomerDetails(
                  customerLocation: "Gachibowli",
                  customerName: "Ramesh Verma",
                  customerProfile: "assets/images/profile.png",
                  onTap: () => onTap()),
              GenericCustomerDetails(
                  customerLocation: "Gachibowli",
                  customerName: "Ramesh Verma",
                  customerProfile: "assets/images/profile.png",
                  onTap: () => onTap())
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffDF7900),
          selectedLabelStyle: const TextStyle(color: Color(0xffDF7900)),
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          currentIndex: 3,
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
            BottomNavigationBarItem(
                icon: Icon(Icons.groups), label: "Customers"),
            BottomNavigationBarItem(
                icon: Icon(Icons.fireplace_outlined), label: "Create Pooja")
          ],
        ));
  }
}
