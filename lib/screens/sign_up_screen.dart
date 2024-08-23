import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/welcome/custom_button.dart';
import 'package:medical_healthcare/widgets/welcome/custom_text_field.dart';
import 'package:medical_healthcare/widgets/navbar_roots.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // LoginScreen(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/images/doctors.png'),
              ),
              const CustomTextField(
                text: 'Full Name',
                icon: Icon(Icons.person),
              ),
              const CustomTextField(
                text: 'Email Address',
                icon: Icon(Icons.email),
              ),
              const CustomTextField(
                text: 'Phone Number',
                icon: Icon(Icons.phone),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: const Text('Password'),
                    prefixIcon: const Icon(Icons.person),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (passToggle) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      child: passToggle
                          ? const Icon(CupertinoIcons.eye_slash_fill)
                          : const Icon(CupertinoIcons.eye_fill),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    title: 'Create Account',
                    onTap: () {
                      // Navigator.pushNamed(context, 'homeScreen');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NavBarRoots(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'logInScreen');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
