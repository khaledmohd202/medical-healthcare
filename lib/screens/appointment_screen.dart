import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/widgets/appointment/book_appointment_widget.dart';
import 'package:medical_healthcare/widgets/appointment/doctor_address_widget.dart';
import 'package:medical_healthcare/widgets/appointment/doctor_feedback_widget.dart';
import 'package:medical_healthcare/widgets/appointment/calling_methods_widget.dart';
import 'package:medical_healthcare/widgets/appointment/patient_reviews_widget.dart';


class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Padding(
                    padding:const EdgeInsets.symmetric(vertical: 10),
                    child: CallingMethodsWidget(
                      image: AssetImage(kImages[2]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 15,
                left: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'About Doctor',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  //brief about the doctor
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(height: 5),
                  //Reviews from patient
                  PatientReviewsWidget(),
                  DoctorFeedbackWidget(),
                  SizedBox(height: 5),
                  //Location of the medical center
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  DoctorAddressWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BookAppointmentWidget(),
    );
  }
}
