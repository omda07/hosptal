import 'package:flutter/material.dart';


import '../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: CustomText(text: 'hello login',),
    );

  }
}
