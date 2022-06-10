import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

List<Widget> topSectionOfThePage() {
  return [
    Container(
      width: 100.w,
      height: 38.h,
      decoration: const BoxDecoration(
        color: customIndigoColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.phone_android,
            size: 50,
            color: Colors.white,
          ),
          Icon(
            Icons.sms,
            size: 50,
            color: Colors.white,
          ),
          Icon(
            Icons.more_horiz,
            size: 50,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            size: 50,
            color: Colors.white,
          ),
        ],
      ),
    ),
  ];
}
