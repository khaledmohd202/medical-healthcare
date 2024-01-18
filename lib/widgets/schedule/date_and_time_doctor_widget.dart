import 'package:flutter/material.dart';

class DateAndTimeForDoctorsWidget extends StatelessWidget {
  const DateAndTimeForDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Row(
          children: [
            Icon(
              Icons.calendar_month,
              color: Colors.black54,
            ),
            SizedBox(width: 5),
            Text(
              '2/11/2023',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Icon(
              Icons.access_time_filled,
              color: Colors.black54,
            ),
            SizedBox(width: 5),
            Text(
              '10:30',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 5),
            const Text(
              'Confirmed',
              style: TextStyle(
                color: Colors.black54,
              ),
            )
          ],
        ),
      ],
    );
  }
}
