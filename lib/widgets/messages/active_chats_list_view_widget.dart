import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';

class ActiveChatsListViewWidget extends StatelessWidget {
  const ActiveChatsListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: kImages.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: 65,
            height: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Stack(
              textDirection: TextDirection.rtl,
              children: [
                Center(
                  child: SizedBox(
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        kImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  top: 10,
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.all(3),
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
