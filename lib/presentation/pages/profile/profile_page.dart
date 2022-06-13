import 'package:animated_switch/animated_switch.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileStateProvider);
    final user = state.currentUserProfile;

    return user == UserProfileModel.empty()
        ? const CustomProgressIndicator(progressIndicatorColor: blackColor)
        : Scaffold(
            appBar: AppBar(
              backgroundColor: transparentColor,
              shadowColor: transparentColor,
              foregroundColor: transparentColor,
              surfaceTintColor: transparentColor,
              toolbarHeight: 50,
              leadingWidth: 40.w,
              leading: AnimatedSwitch(
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
              ),
              actions: [
                IconButton(
                  padding: const EdgeInsets.only(right: 45),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: customIndigoColor,
                    size: 40,
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CachedNetworkImage(
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
                        const SizedBox(height: 24),
                        Column(
                          children: [
                            CustomText(
                              text: user.userName,
                              minFontSize: 25,
                              maxFontSize: 27,
                              textPadding: const EdgeInsets.only(),
                              textStyle: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 4),
                            CustomText(
                              text: user.status,
                              minFontSize: 17,
                              maxFontSize: 19,
                              textPadding: const EdgeInsets.only(),
                              textStyle: const TextStyle(fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomText(
                            text: "About",
                            minFontSize: 25,
                            maxFontSize: 30,
                            textPadding: EdgeInsets.only(),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: customIndigoColor,
                            ),
                          ),
                          const SizedBox(height: 16),
                          CustomText(
                            text: user.about,
                            minFontSize: 17,
                            maxFontSize: 19,
                            textPadding: const EdgeInsets.symmetric(horizontal: 20),
                            textStyle: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.w,
                      height: 6.h,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.edit_note,
                              size: 30,
                              color: customIndigoColor,
                            ),
                            SizedBox(width: 10),
                            CustomText(
                              text: "Edit Profile",
                              minFontSize: 21,
                              maxFontSize: 25,
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: customIndigoColor,
                              ),
                              textPadding: EdgeInsets.only(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
