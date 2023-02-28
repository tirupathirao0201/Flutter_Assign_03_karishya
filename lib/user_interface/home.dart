import 'package:flutter/material.dart';
import 'package:flutter_assign3/user_interface/schedule_puja.dart';

// add this
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(39),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Sign In",
              style: TextStyle(
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 21),
            const Text(
              "Sign in to access all the important puja material and puja sessions.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 34),
            TextField(
              keyboardType: TextInputType.phone,
              controller: textController,
              maxLength: 10,
              decoration: InputDecoration(
                  hintText: "Enter mobile no.",
                  hintStyle: const TextStyle(color: Color(0xFFAE88A0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFDFC2DE)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFDFC2DE)),
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 39),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SchedulePuja()));
                  textController.text = '';
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF6A234F),
                    minimumSize: const Size(350, 56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: 2),
                )),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xffDF7900)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
