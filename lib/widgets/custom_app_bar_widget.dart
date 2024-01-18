import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class CustomAppBarWidget extends StatelessWidget
// implements PreferredSizeWidget
{
  const CustomAppBarWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style:const TextStyle(
              color: kPrimaryColor,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
