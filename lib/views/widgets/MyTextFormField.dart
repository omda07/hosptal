import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital/constant.dart';

class MyTextFormField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final bool isPassword;
  final TextInputType? keyboardType;
  final String? helperText;
  final String initialValue;
  final Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final Icon? myIcons;

  MyTextFormField(
      {this.hintText,
      this.validator,
      this.onSaved,
      this.keyboardType,
      this.helperText,
      this.isPassword = false,
      this.initialValue = "",
      this.onEditingComplete,
      this.textInputAction,
      this.myIcons});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      textInputAction: textInputAction ?? TextInputAction.done,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        prefixIcon: myIcons,
        isDense: true,
        labelText: hintText,
        helperText: helperText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelStyle: TextStyle(
            fontSize: 14, color: mainColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: grayborder),
          borderRadius: BorderRadius.circular(8.0),
        ),
       // contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: mainColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      obscureText: isPassword ? true : false,
      validator: validator,
      onSaved: onSaved,
      keyboardType: keyboardType,
    );
  }
}
