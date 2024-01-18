import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/custom_app_bar_widget.dart';
import 'package:medical_healthcare/widgets/messages/active_chats_list_view_widget.dart';
import 'package:medical_healthcare/widgets/messages/chat_list_view_widget.dart';
import 'package:medical_healthcare/widgets/messages/custom_tex_form_field_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppBarWidget(title: 'Messages'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            CustomTextFormFieldWidget(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Active Now',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ActiveChatsListViewWidget(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recent Chat',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ChatListViewWidget(),
          ],
        ),
      ),
    );
  }
}
