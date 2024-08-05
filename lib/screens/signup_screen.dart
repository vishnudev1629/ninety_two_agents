import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/constant.dart';
import 'package:ninetytwoagents/widgets/customtextfeild.dart';

final _fromKey = GlobalKey<FormState>();

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool ischecked = false;
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Buyer',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _fromKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextFormField(
                textController: _nameController,
                labelText: 'First Name',
              ),
              CustomTextFormField(
                textController: _lastNameController,
                labelText: 'Last Name',
              ),
              CustomTextFormField(
                textController: _emailController,
                labelText: 'Email',
              ),
              CustomTextFormField(
                textController: _passwordController,
                labelText: 'Password',
              ),
              CustomTextFormField(
                textController: _confirmPasswordController,
                labelText: 'Confirm Password',
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child: Row(
                    children: [
                      Checkbox(
                          value: ischecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              ischecked = newValue!;
                            });
                          }),
                      const Text('I read and accept the'),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Terms and Conditions',
                        style: TextStyle(color: SignUpButtonColor),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(20),
                  height: 58,
                  decoration: BoxDecoration(
                      color: SignUpButtonColor,
                      borderRadius: BorderRadius.circular(45),
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(20),
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: const Center(
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

