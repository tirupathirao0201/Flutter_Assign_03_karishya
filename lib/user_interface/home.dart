import 'package:flutter/material.dart';
import 'package:flutter_assign3/user_interface/schedule_puja.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// Home scree widget starts
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("assets/images/temple.png"),
          opacity: 1.0
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children:   <Widget>[
              const Text("Sign In",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontWeight:FontWeight.w600,
                  fontSize:32,
                ),
              ),
              const Text("Sign in to access all the important puja material and puja sessions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,            
                ),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                controller: textController,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Enter mobile no.",
                  hintStyle: const TextStyle(
                    color:Color(0xFFAE88A0)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width:1,color: Color(0xFFDFC2DE)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFDFC2DE)),
                        borderRadius: BorderRadius.circular(10))
                ),
              ),
              ElevatedButton(
                
                onPressed: (){
                // ignore: avoid_print
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>  SchedulePuja())
                );
                print(textController.text);
                textController.text='';
              }, 
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF6A234F),
                minimumSize: const Size(350, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: const Text("SUBMIT",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: 2
                    ),
                  )
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Don't have an account?",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 15
                ),
                ),
                Text("SIGN UP",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xffDF7900)
                ),
                )
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
