import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitch(
      textOn: "Online",
      textOff: "Offline",
      textStyle: const TextStyle(
        color: customIndigoColor,
        fontWeight: FontWeight.w700,
      ),
      width: 8.h,
      height: 8.w,
      iconOn: Icons.circle,
      iconOff: Icons.check_circle,
      colorOn: greenColor,
      colorOff: redColor,
      onChanged: (bool state) {},
    );
  }
}
