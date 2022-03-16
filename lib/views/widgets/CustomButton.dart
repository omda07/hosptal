import 'package:flutter/material.dart';
import '../../constant.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  var onPressed;
  final Color color;

  CustomButton({this.text = " ", this.onPressed, this.color = mainColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(width: 1.0, color: borderColor),
          ),
          primary: Colors.white,
          elevation: 0),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: CustomText(
          text: text,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
