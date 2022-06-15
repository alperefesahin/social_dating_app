import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class SwitchButton extends ConsumerWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onlineStatus = ref.watch(profileStateProvider.select(
      (state) => state.currentUserProfile.onlineStatus,
    ));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AnimatedSwitch(
        textOn: "Online",
        textOff: "Offline",
        textStyle: const TextStyle(
          color: whiteColor,
          fontWeight: FontWeight.w600,
        ),
        width: 12.h,
        height: 12.w,
        iconOn: Icons.circle,
        iconOff: Icons.check_circle,
        colorOn: greenColor,
        colorOff: redColor,
        value: onlineStatus,
        onChanged: (bool onlineStatus) {
          ref.read(profileStateProvider.notifier).mapEventsToState(
                ChangeOnlineStatus(onlineStatus: onlineStatus),
              );
        },
      ),
    );
  }
}
