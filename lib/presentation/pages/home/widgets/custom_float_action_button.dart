import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';

class CustomFloatActionButton extends StatelessWidget {
  const CustomFloatActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).navigate(const MapsRoute());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(60),
          ),
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.35),
              spreadRadius: 9,
              blurRadius: 17,
            ),
          ],
        ),
        child: const CircleAvatar(
          radius: 34.0,
          backgroundColor: whiteColor,
          child: CircleAvatar(
            backgroundColor: customIndigoBackgroundColor,
            radius: 30,
            child: Icon(
              CupertinoIcons.map_fill,
              size: 35,
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
