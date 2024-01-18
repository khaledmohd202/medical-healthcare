import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class DoctorAddressWidget extends StatelessWidget {
  const DoctorAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.purple[50],
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.location_on,
            color: kPrimaryColor,
            size: 30,
          ),
        ),
      ),
      title: const Text(
        'Cairo, Medical center',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text(
        'address line of the medical center',
        style: TextStyle(
          color: Colors.black45,
        ),
      ),
      trailing: InkWell(
        onTap: () {},
        child: const Icon(
          Icons.location_city,
          color: kPrimaryColor,
          size: 25,
        ),
      ),
    );
  }
}
