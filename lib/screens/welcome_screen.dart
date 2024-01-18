import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/navbar_roots.dart';
import 'package:medical_healthcare/widgets/welcome/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavBarRoots(),
                    ),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/doctors.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Doctors Appointment',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Appoint Your Doctor',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  title: 'Log In',
                  onTap: () {
                    Navigator.pushNamed(context, 'logInScreen');
                  },
                ),
                CustomButton(
                  title: 'Sign Up',
                  onTap: () {
                    Navigator.pushNamed(context, 'signUpScreen');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
