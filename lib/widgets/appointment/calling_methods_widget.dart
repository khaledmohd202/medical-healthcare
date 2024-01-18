import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class CallingMethodsWidget extends StatelessWidget {
  const CallingMethodsWidget({
    super.key,
    required this.image,
  });
  final ImageProvider<Object>? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: image,
        ),
        const SizedBox(height: 15),
        const Text(
          'Dr. Doctor Name',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Therapist',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: kShadowColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: kShadowColor, shape: BoxShape.circle),
                child: const Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
