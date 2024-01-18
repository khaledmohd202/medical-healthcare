import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/appointment_screen.dart';
import 'package:medical_healthcare/screens/chat_screen.dart';
import 'package:medical_healthcare/screens/home_screen.dart';
import 'package:medical_healthcare/screens/login_screen.dart';
import 'package:medical_healthcare/screens/messages_screen.dart';
import 'package:medical_healthcare/screens/settings_screen.dart';
import 'package:medical_healthcare/screens/sign_up_screen.dart';
import 'package:medical_healthcare/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        'logInScreen':(context) => const LoginScreen(),
        'signUpScreen':(context) => const SignUpScreen(),
        'homeScreen':(context) =>  const HomeScreen(),
        'appointmentScreen':(context) => const AppointmentScreen(),
        'messagesScreen':(context) => const MessagesScreen(),
        'settingsScreen':(context) => const SettingsScreen(),
        'chatScreen':(context) => const ChatScreen(),
      },
    );
  }
}
