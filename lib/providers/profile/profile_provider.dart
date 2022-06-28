import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/profile/profile_state.dart';
import 'package:social_dating_app/application/profile/profile_state_notifier.dart';

final profileStateProvider = StateNotifierProvider<ProfileStateNotifier, ProfileState>(
  (ref) => ProfileStateNotifier(ref.read)..getCurrentUser(),
);
