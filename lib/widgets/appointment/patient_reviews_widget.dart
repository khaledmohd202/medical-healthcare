import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class PatientReviewsWidget extends StatelessWidget {
  const PatientReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Reviews',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 10),
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        const SizedBox(width: 10),
        const Text(
          '4.9',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          '(500)',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: kPrimaryColor,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See all',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
