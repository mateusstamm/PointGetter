import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final String title;
  final Color color;
  final String iconImagePath;

  const OptionWidget({
    required this.title,
    required this.color,
    required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        padding: const EdgeInsets.all(0),
      ),
      child: Container(
        width: 140,
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Image.asset(
              iconImagePath,
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
