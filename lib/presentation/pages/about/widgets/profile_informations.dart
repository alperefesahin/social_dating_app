import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text_field.dart';
import 'package:social_dating_app/presentation/pages/about/constants/texts.dart';
import 'package:social_dating_app/domain/user_profile/about_model.dart';
import 'package:social_dating_app/domain/user_profile/status_model.dart';
import 'package:social_dating_app/domain/user_profile/username_model.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class ProfileInformations extends ConsumerWidget {
  const ProfileInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAbout = ref.watch(
      profileStateProvider.select(
        (state) => state.userAbout,
      ),
    );

    final userStatus = ref.watch(
      profileStateProvider.select(
        (state) => state.userStatus,
      ),
    );

    final userName = ref.watch(
      profileStateProvider.select(
        (state) => state.userName,
      ),
    );

    return Padding(
      padding: EdgeInsets.only(top: 3.h),
      child: Column(
        children: [
          CustomTextField(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            hint: whatShouldBeYourUsernameText,
            isEnabled: true,
            isRequiredField: true,
            isPasswordField: false,
            onChanged: (value) {
              ref.read(profileStateProvider.notifier).mapEventsToState(
                    UsernameChanged(usernameText: value),
                  );
            },
            keyboardType: TextInputType.text,
            error: userName.error?.name,
          ),
          CustomTextField(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            isEnabled: true,
            hint: howDoYouFeelText,
            isPasswordField: false,
            isRequiredField: true,
            onChanged: (value) {
              ref.read(profileStateProvider.notifier).mapEventsToState(
                    StatusChanged(statusText: value),
                  );
            },
            error: userStatus.error?.name,
            keyboardType: TextInputType.text,
          ),
          CustomTextField(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            isEnabled: true,
            hint: tellAboutYourselfText,
            isPasswordField: false,
            isRequiredField: true,
            maxLines: 5,
            onChanged: (value) {
              ref.read(profileStateProvider.notifier).mapEventsToState(
                    AboutChanged(aboutText: value),
                  );
            },
            error: userAbout.error?.name,
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
