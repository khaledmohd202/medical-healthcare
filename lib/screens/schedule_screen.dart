import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/custom_app_bar_widget.dart';
import 'package:medical_healthcare/widgets/schedule/custom_inkwell_widget.dart';
import 'package:medical_healthcare/widgets/schedule/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final List _scheduleWidget = [
    // UpcomingSchedule
    const UpcomingSchedule(),
    //Temporary Widgets
    const Center(
      child: Text(
        'Completed',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Canceled',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBarWidget(title: 'Schedule'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomInkWellWidget(
                      title: 'UpComing',
                      onTap: () {
                        setState(() {
                          _buttonIndex = 0;
                        });
                      },
                      color: _buttonIndex == 0
                          ? kPrimaryColor
                          : Colors.transparent,
                      colorTitle:
                          _buttonIndex == 0 ? Colors.white : Colors.black38,
                    ),
                    CustomInkWellWidget(
                      title: 'Completed',
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      color: _buttonIndex == 1
                          ? kPrimaryColor
                          : Colors.transparent,
                      colorTitle:
                          _buttonIndex == 1 ? Colors.white : Colors.black38,
                    ),
                    CustomInkWellWidget(
                      title: 'Canceled',
                      onTap: () {
                        setState(() {
                          _buttonIndex = 2;
                        });
                      },
                      color: _buttonIndex == 2
                          ? kPrimaryColor
                          : Colors.transparent,
                      colorTitle:
                          _buttonIndex == 2 ? Colors.white : Colors.black38,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _scheduleWidget[_buttonIndex],
            ],
          ),
        ),
      ),
    );
  }
}
