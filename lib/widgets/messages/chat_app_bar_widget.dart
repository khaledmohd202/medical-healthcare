import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class ChatAppBarWidget extends StatelessWidget {
  const ChatAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kShadowColor,
      leadingWidth: 30,
      title: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(kImages[2]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Dr. Doctor Name',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 10),
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.call,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 10),
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.video_camera_front_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 10),
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
      ],
    );
  }
}
