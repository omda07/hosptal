import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital/views/screens/login_screen.dart';
import 'package:hospital/views/widgets/CustomButton.dart';
import 'package:hospital/views/widgets/navigator.dart';

import '../widgets/custom_text.dart';

class PrototypeMap extends StatelessWidget {
  const PrototypeMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset('assets/images/Rectangle3.svg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Prototype Map',
                  fontSize: 22,
                ),
                SizedBox(height: media.height/30,),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      CustomButton(
                        color: Colors.white,
                        text: 'Doctor',
                        onPressed: () {},
                      ),
                      SizedBox(width: media.width / 30),
                      CustomButton(
                        color: Colors.white,
                        text: 'Receptionist',
                        onPressed: () {},
                      ),
                      SizedBox(width: media.width / 30),
                      CustomButton(
                        color: Colors.white,
                        text: 'Nurse',
                        onPressed: () {},
                      ),
                      SizedBox(width: media.width / 30),
                      CustomButton(
                        color: Colors.white,
                        text: 'Analysis Employee',
                        onPressed: () {},
                      ),
                      SizedBox(width: media.width / 30),
                      CustomButton(
                        color: Colors.white,
                        text: 'Manager',
                        onPressed: () {
                          navigatorAndRemove(context, LoginScreen());
                        },
                      ),
                      SizedBox(width: media.width / 30),
                      CustomButton(
                        color: Colors.white,
                        text: 'Hr',
                        onPressed: () {},
                      ),
                    ],
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
    );
  }
}
