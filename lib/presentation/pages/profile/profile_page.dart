import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/providers/auth/auth_state_provider.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: IconButton(
        onPressed: () {
          ref.read(authStateProvider.notifier).signOut();
          ref.read(phoneSignInStateProvider.notifier).mapEventsToState(const Reset());
        },
        icon: const Icon(
          Icons.exit_to_app,
          size: 50,
        ),
      ),
    );
  }
}
