import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.userImageUrl,
    required this.userStatus,
    required this.userName,
  }) : super(key: key);

  final String userImageUrl;
  final String userStatus;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25,
        left: 25,
        bottom: 25,
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 25),
                  child: CachedNetworkImage(
                    placeholder: (context, url) => const CircularProgressIndicator(
                      color: blackColor,
                    ),
                    imageUrl: userImageUrl,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: imageProvider,
                          )),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      minFontSize: 20,
                      maxFontSize: 22,
                      textPadding: const EdgeInsets.only(),
                      textStyle: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    CustomText(
                      text: userStatus,
                      minFontSize: 18,
                      maxFontSize: 20,
                      textPadding: const EdgeInsets.only(bottom: 35, top: 5),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.circle_filled,
                  color: offlineStatusRedColor,
                ),
                iconSize: 12,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
