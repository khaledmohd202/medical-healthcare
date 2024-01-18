import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class ChatListViewWidget extends StatelessWidget {
  const ChatListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: kImages.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          minVerticalPadding: 20,
          onTap: () {
            Navigator.pushNamed(context, 'chatScreen');
          },
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(kImages[index]),
          ),
          title: const Text(
            'Dr. Doctor Name',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text(
            'Hello, Doctor are you there?',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
            ),
          ),
          trailing: const Text(
            '12:30',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
          ),
        );
      },
    );
  }
}
