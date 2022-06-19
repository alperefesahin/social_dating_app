import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/about/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/about/widgets/create_profile_button.dart';
import 'package:social_dating_app/presentation/pages/about/widgets/profile_image.dart';
import 'package:social_dating_app/presentation/pages/about/widgets/profile_informations.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10.h,
          bottom: 5.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CustomText(
                text: tellAboutYourselfText,
                minFontSize: 35,
                maxFontSize: 40,
                textPadding: EdgeInsets.only(),
                textStyle: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Column(
              children: const [
                ProfileImage(),
                ProfileInformations(),
              ],
            ),
            const CreateProfileButton(),
          ],
        ),
      ),
    );
  }
}
