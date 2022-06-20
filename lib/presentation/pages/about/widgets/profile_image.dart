import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? newImage;

  @override
  Widget build(BuildContext context) {
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
                image: newImage == null
                    ? const AssetImage("assets/images/user.png") as ImageProvider
                    : FileImage(File(newImage!.path)),
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              final image = await ImagePicker().pickImage(
                source: ImageSource.gallery,
                maxHeight: 200,
                maxWidth: 200,
                imageQuality: 50,
              );
              if (image == null) return;

              setState(() {
                final temporaryFile = File(image.path);
                newImage = temporaryFile;
              });
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
