import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 37.5.w,
            height: 17.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/user.png",
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.chevron_down_square_fill,
                size: 30,
                color: customIndigoBackgroundColor,
              ))
        ],
      ),
    );
  }
}
