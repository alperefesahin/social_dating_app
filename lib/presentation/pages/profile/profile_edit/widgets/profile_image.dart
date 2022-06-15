import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: CachedNetworkImage(
        placeholder: (context, url) => const CircularProgressIndicator(
          color: blackColor,
        ),
        imageUrl: user.imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: 37.5.w,
          height: 17.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(80),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: imageProvider,
              )),
        ),
      ),
    );
  }
}
