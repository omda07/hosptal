import 'package:flutter/material.dart';
import '../../constant.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  var onPressed;
  final Color color;
  final Color textColor;
final double borderWidth;
  CustomButton({this.text = " ", this.onPressed, this.color = buttonColor1,this.textColor = mainColor,this.borderWidth=1.1});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side:  BorderSide(width: borderWidth, color: borderColor),
          ),
          primary: color,
          elevation: 0),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: CustomText(
          color: textColor,
          text: text,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
