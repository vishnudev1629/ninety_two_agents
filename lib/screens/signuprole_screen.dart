import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/screens/signup_screen.dart';


class SignUpRolePage extends StatefulWidget {
  const SignUpRolePage({super.key});

  @override
  State<SignUpRolePage> createState() => _SignUpRolePageState();
}

class _SignUpRolePageState extends State<SignUpRolePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Padding(padding: EdgeInsets.only(top: 25),
                 child: Text('Choose your Sign Up role',
                    style:GoogleFonts.roboto(
                    textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                    )
                  ),
               ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    const SignupScreen()));
                  },
                  child: Container(
                    width: 256,
                    height: 256,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       ),
                        child:Image.asset('assets/buyer_asset.png') ,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                 Text('Become a Buyer',
                 style:GoogleFonts.roboto(
                  textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
                  )),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 256,
                  height: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Image.asset('assets/seller_asset.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                 Text('Become a Seller',
                 style:GoogleFonts.roboto(
                  textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
                  )),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 256,
                  height: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Image.asset('assets/agent_asset.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                  Text('Become a Agent',
                   style:GoogleFonts.roboto(
                  textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
