import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({
    super.key, required this.title,required this.onTap
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Text(
            textAlign:TextAlign.center,
            title,
            style:const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
