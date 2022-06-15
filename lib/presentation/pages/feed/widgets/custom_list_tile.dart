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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
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
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Icon(
              CupertinoIcons.circle_filled,
              color: offlineStatusRedColor,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
