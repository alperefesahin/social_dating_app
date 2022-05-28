import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          context.read<AuthCubit>().signOut();
        },
        icon: const Icon(
          Icons.exit_to_app,
          size: 50,
        ),
      ),
    );
  }
}
