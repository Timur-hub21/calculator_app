// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback? onTap;
  Color? backgroundColor;
  Color textColor = Colors.white;
  String? label;

  CustomButton.red({Key? key, this.label, this.onTap}) : super(key: key) {
    backgroundColor = Colors.red;
  }
  CustomButton.orange({Key? key, this.label, this.onTap}) : super(key: key) {
    backgroundColor = Colors.deepOrange;
  }
  CustomButton.blue({Key? key, this.label, this.onTap}) : super(key: key) {
    backgroundColor = Colors.blue;
  }
  CustomButton.grey({Key? key, this.label, this.onTap}) : super(key: key) {
    backgroundColor = Colors.grey;
    textColor = Colors.black87;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: backgroundColor,
            child: Center(
              child: Text(
                label!,
                style: TextStyle(color: textColor, fontSize: 28),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
