import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/domain/user_profile/status_model.dart';
import 'package:social_dating_app/domain/user_profile/about_model.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text_field.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class TextFields extends ConsumerWidget {
  const TextFields({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAbout = ref.watch(profileStateProvider.select((state) => state.userAbout));
    final userStatus = ref.watch(profileStateProvider.select((state) => state.userStatus));

    return Padding(
      padding: EdgeInsets.only(bottom: 5.h, top: 5.h),
      child: Column(
        children: [
          CustomTextField(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            hint: user.userName,
            isEnabled: false,
            isPasswordField: false,
            onChanged: (value) {},
            keyboardType: TextInputType.text,
          ),
          CustomTextField(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            isEnabled: true,
            hint: user.status,
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
            hint: user.about,
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
