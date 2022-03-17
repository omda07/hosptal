import 'package:flutter/material.dart';
import 'package:hospital/constant.dart';

Widget buildTextField({String? myhintText, IconData? myIcons, bool? canObscure}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.00),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: canObscure??false,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: gray),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: Icon(myIcons, color: Colors.white),
          hintText: myhintText,
          hintStyle: TextStyle(color: Colors.white),
          filled: true,

        ),
      ),
    );
