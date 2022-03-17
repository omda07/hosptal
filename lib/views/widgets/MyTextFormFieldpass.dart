import 'package:flutter/material.dart';
import 'package:hospital/constant.dart';
import 'package:hospital/style/icon_broken.dart';

import '../../constant.dart';
import '../../constant.dart';

class MyTextFormFieldpass extends StatefulWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  // final bool isPassword;
  final TextInputType? keyboardType;
  final String? helperText;
  final String initialValue;
  final Function()? onEditingComplete;
  final TextInputAction? textInputAction;

  // Initially password is obscure
  bool obscureText;

  final Icon? myIcons;

  // Toggles the password show status

  MyTextFormFieldpass(
      {this.hintText,
      this.validator,
      this.onSaved,
      this.keyboardType,
      this.helperText,
      this.obscureText = true,
      this.initialValue = "",
      this.onEditingComplete,
      this.textInputAction,
      this.myIcons});

  @override
  _MyTextFormFieldpassState createState() => _MyTextFormFieldpassState();
}

class _MyTextFormFieldpassState extends State<MyTextFormFieldpass> {
  void _toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      textInputAction: widget.textInputAction ?? TextInputAction.done,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
          prefixIcon: widget.myIcons,
          isDense: true,
          labelText: widget.hintText,
          helperText: widget.helperText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: TextStyle(fontSize: 14, color: mainColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: grayborder),
            borderRadius: BorderRadius.circular(8.0),
          ),
          //  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: mainColor,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          suffixIcon: FlatButton(
              onPressed: _toggle,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: widget.obscureText
                    ? Icon(Icons.remove_red_eye_outlined,
                        size: 24, color: mainColor)
                    : Icon(IconBroken.Hide, size: 24, color: mainColor),
              ))),
      obscureText: widget.obscureText,
      validator: widget.validator,
      onSaved: widget.onSaved,
      keyboardType: widget.keyboardType,
    );
  }
}
