import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/schedule/custom_inkwell_button_widget.dart';
import 'package:medical_healthcare/widgets/schedule/date_and_time_doctor_widget.dart';

class DoctorScheduleWidget extends StatelessWidget {
  const DoctorScheduleWidget({
    super.key,
    required this.image,
  });
  final ImageProvider<Object>? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child:  ListTile(
                title: const  Text(
                  'Dr. Doctor Name',
                  style: TextStyle(
                    // color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const  Text('Therapist'),
                trailing: CircleAvatar(
                  radius: 25,
                  backgroundImage: image, //1
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 20,
              ),
            ),
            const DateAndTimeForDoctorsWidget(),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomInkWellButtonWidget(
                  title: 'Cancel',
                  color: kSecondaryColor,
                  titleColor: Colors.black,
                ),
                CustomInkWellButtonWidget(
                  color: kPrimaryColor,
                  titleColor: Colors.white,
                  title: 'Reschedule',
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
