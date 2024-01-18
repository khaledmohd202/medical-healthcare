import 'package:flutter/material.dart';

class ChatBottomSheetWidget extends StatelessWidget {
  const ChatBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {},
            child: Icon(
              color: Colors.deepPurple[200],
              Icons.add,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: InkWell(
            onTap: () {},
            child: Icon(
              color: Colors.deepPurple[200],
              Icons.emoji_emotions_outlined,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width / 1.5,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Type something for Doctor.....',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: InkWell(
            onTap: () {},
            child: Icon(
              color: Colors.deepPurple[200],
              Icons.send,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}
