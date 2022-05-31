import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          context.read<AuthCubit>().signOut();
          context.read<PhoneNumberSignInCubit>().reset();
        },
        icon: const Icon(
          Icons.exit_to_app,
          size: 50,
        ),
      ),
    );
  }
}
