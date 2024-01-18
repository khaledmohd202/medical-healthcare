import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/custom_app_bar_widget.dart';
import 'package:medical_healthcare/widgets/settings/custom_listtile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize:  Size.fromHeight(70),
        child: CustomAppBarWidget(title: 'Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            ListTile(
              leading: InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                  radius: 30,
                ),
              ),
              title: const Text(
                'Dr. Doctor Name',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text('Doctor Profile'),
            ),
            const Divider(height: 20, thickness: 1, indent: 30, endIndent: 30),
            const SizedBox(height: 20),
            CustomListTileWidget(
              title: const Text(
                'Doctor Profile',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomListTileWidget(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ),
              title: const Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            CustomListTileWidget(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.indigo,
                  size: 35,
                ),
              ),
              title: const Text(
                'Privacy',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            CustomListTileWidget(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.settings_suggest_outlined,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              title: const Text(
                'General',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            CustomListTileWidget(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.info_outline_rounded,
                  color: Colors.orange,
                  size: 35,
                ),
              ),
              title: const Text(
                'About Us',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            CustomListTileWidget(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.redAccent,
                  size: 35,
                ),
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            const Divider(height: 20, thickness: 1, indent: 30, endIndent: 30),
          ],
        ),
      ),
    );
  }
}
