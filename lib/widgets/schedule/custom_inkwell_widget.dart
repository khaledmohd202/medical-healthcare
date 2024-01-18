import 'package:flutter/material.dart';

class CustomInkWellWidget extends StatefulWidget {
  const CustomInkWellWidget({
    super.key,
    required this.title,
    // required this.buttonIndex,
    required this.onTap,
    required this.color,
    required this.colorTitle,
  });
  // final int buttonIndex;
  final String title;
  final void Function()? onTap;
  final Color color;
  final Color colorTitle;

  @override
  State<CustomInkWellWidget> createState() => _CustomInkWellWidgetState();
}

class _CustomInkWellWidgetState extends State<CustomInkWellWidget> {
  // int _buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.color,
        ),
        child: Text(
          widget.title,
          style:  TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: widget.colorTitle,
          ),
        ),
      ),
    );
  }
}
