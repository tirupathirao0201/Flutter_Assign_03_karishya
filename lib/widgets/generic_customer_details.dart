import 'package:flutter/material.dart';

class GenericCustomerDetails extends StatelessWidget {
  final String? customerProfile;
  final String? customerName;
  final String? customerLocation;
  final Function()? onTap;

  const GenericCustomerDetails(
      {super.key,
      this.customerProfile,
      this.customerName,
      this.customerLocation,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap!,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1, color: Color.fromARGB(255, 180, 180, 180)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              spacing: 15,
              children: [
                Image.asset(customerProfile!),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      customerName!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff262525)),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Text(
                          customerLocation!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xff50555c)),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              value: false,
              onChanged: (item) {},
              activeColor: const Color(0xff6A234F),
              checkColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
