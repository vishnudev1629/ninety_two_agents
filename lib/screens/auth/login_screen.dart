import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/constant.dart';
import 'package:ninetytwoagents/screens/signuprole_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/92agents.png',
              height: 50,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 250,
              height: 345,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.all(Radius.circular(17)),
              ),
              child: Image.asset('assets/signInPage.png'),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Tag line of the application\n goes here",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.all(20),
                height: 58,
                decoration: BoxDecoration(
                    color:SignUpButtonColor,
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(width: 1,color: Colors.grey.shade400)
                    ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const SignUpRolePage(),
                ));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.all(20),
                height: 58,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(45),
                    border: Border.all(width: 1,color: Colors.grey.shade400)
                    ),
                child: const Center(                                                                       
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}                                                                                                 
//aa