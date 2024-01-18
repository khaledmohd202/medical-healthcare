import 'package:flutter/material.dart';

class CustomInkWellButtonWidget extends StatelessWidget {
  const CustomInkWellButtonWidget({
    super.key,
    required this.color,
    required this.titleColor,
    required this.title,
  });
  final Color color;
  final Color titleColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 150,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color, //1
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title, //3
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: titleColor, //2
            ),
          ),
        ),
      ),
    );
  }
}
