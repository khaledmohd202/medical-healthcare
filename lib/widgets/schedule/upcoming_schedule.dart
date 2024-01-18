import 'package:flutter/material.dart';
import 'package:medical_healthcare/widgets/schedule/doctor_schedule_Widget.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Doctor',
              style: TextStyle(
                // color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            DoctorScheduleWidget(
              image: AssetImage('assets/images/doctor1.jpg'),
            ),
            SizedBox(height: 15),
            DoctorScheduleWidget(
              image: AssetImage('assets/images/doctor2.jpg'),
            ),
            SizedBox(height: 15),
            DoctorScheduleWidget(
              image: AssetImage('assets/images/doctor3.jpg'),
            ),
            SizedBox(height: 15),
            DoctorScheduleWidget(
              image: AssetImage('assets/images/doctor4.jpg'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
