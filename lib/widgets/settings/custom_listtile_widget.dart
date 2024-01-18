import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    super.key,
    required this.leading,
    required this.title,
  });
  final Widget? leading;
  final Widget? title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onTap: () {},
      leading: leading,
      title: title,
      trailing: InkWell(
        onTap: () {},
        child: const Icon(
          Icons.arrow_forward_ios,
          // color: Colors.blue,
        ),
      ),
    );
  }
}
