import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class ChatSampleWidget extends StatelessWidget {
  const ChatSampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: kSecondaryColor,
              ),
              child: const Text(
                'Hello, what i can do for you, you can book appointment directly',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  bottom: 25,
                  right: 20,
                ),
                decoration: const BoxDecoration(
                  color: kShadowColor,
                ),
                child: const Text(
                  'Hello Doctor, Are Your There?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
