import 'package:flutter/material.dart';
import 'package:medical_healthcare/widgets/messages/chat_app_bar_widget.dart';
import 'package:medical_healthcare/widgets/messages/chat_bottom_sheet_widget.dart';
import 'package:medical_healthcare/widgets/messages/chat_sample_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: ChatAppBarWidget(),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(
          top: 20,
          left: 15,
          right: 15,
          bottom: 80,
        ),
        itemBuilder: (context, index) {
          return const ChatSampleWidget();
        },
        itemCount: 10,
      ),
      bottomSheet: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: const ChatBottomSheetWidget(),
      ),
    );
  }
}

