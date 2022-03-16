import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital/views/screens/prototype_Screen.dart';
import 'package:hospital/views/widgets/navigator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../constant.dart';
import '../widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: media.height / 3,
              ),
              Image.asset(
                'assets/icons/hospitalIcon2.png',
                width: media.width / 2.8,
              ),
              SizedBox(
                height: media.height / 50,
              ),
              CustomText(
                text: 'Hospital System',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: LinearPercentIndicator(
                  animation: true,
                  lineHeight: 7.0,
                  animationDuration: 3000,
                  percent: 1,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: mainColor,
                  onAnimationEnd: () {
                    navigatorAndRemove(context, const PrototypeMap());
                  },
                ),
              ),
              CustomText(text: 'Loading....'),
              SizedBox(
                height: media.height / 5,
              ),
            ],
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
