import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class ProfileImage extends ConsumerWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newImage = ref.watch(profileStateProvider).userFileImg;
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 37.5.w,
            height: 17.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(80),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: newImage.path == ""
                    ? const AssetImage("assets/images/user.png") as ImageProvider
                    : FileImage(File(newImage.path)),
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              final image = await ImagePicker().pickImage(
                source: ImageSource.gallery,
                maxHeight: 200,
                maxWidth: 200,
                imageQuality: 100,
              );
              if (image == null) return;

              final temporaryFile = File(image.path);

              ref.read(profileStateProvider.notifier).mapEventsToState(
                    UpdateUserFileImg(
                      imageFile: temporaryFile,
                    ),
                  );
            },
            icon: const Icon(
              CupertinoIcons.chevron_down_square_fill,
              size: 30,
              color: customIndigoBackgroundColor,
            ),
          )
        ],
      ),
    );
  }
}
