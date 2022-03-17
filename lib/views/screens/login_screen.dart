import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital/constant.dart';
import 'package:hospital/style/icon_broken.dart';
import 'package:hospital/views/widgets/CustomButton.dart';
import '../widgets/MyTextFormField.dart';
import '../widgets/MyTextFormFieldpass.dart';
import '../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: media.height,
          width: media.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset('assets/images/Rectangle3.svg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: media.height / 6,
                    ),
                    Image.asset(
                      'assets/icons/Layer 1.png',
                      width: media.width / 3.4,

                    ),
                    SizedBox(
                      height: media.height / 70,
                    ),
                    CustomText(
                      text: 'Welcome back !',
                      fontSize: 26,
                    ),
                    CustomText(
                      text: 'To Continue , Login Now',
                      color: textColor1,
                    ),
                    SizedBox(
                      height: media.height / 15,
                    ),
                    MyTextFormField(
                      myIcons: const Icon(
                        IconBroken.Message,
                        size: 24,
                        color: mainColor,
                      ),
                      hintText: 'Email',
                    ),
                    SizedBox(
                      height: media.height / 50,
                    ),
                    MyTextFormFieldpass(
                      myIcons: const Icon(
                        IconBroken.Lock,
                        size: 24,
                        color: mainColor,
                      ),
                      hintText: 'Password',
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'forgot password ?',
                          style:  TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize:12 ,
                            color:textcolor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.height / 50,
                    ),
                    SizedBox(
                      width: media.width,
                      height: media.height / 15,
                      child: CustomButton(
                        onPressed: () {},
                        text: 'Login',
                        textColor: Colors.white,
                        borderWidth: 0,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset('assets/images/Rectangle2.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
