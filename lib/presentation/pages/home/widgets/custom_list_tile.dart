import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.userImageUrl,
    required this.userStatus,
    required this.userName,
    required this.podcastOwnersName,
  }) : super(key: key);

  final String userImageUrl;
  final String userStatus;
  final String userName;
  final String podcastOwnersName;

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
                    placeholder: (context, url) => const CustomProgressIndicator(
                      progressIndicatorColor: blackColor,
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
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                        text: "User Name",
                        minFontSize: 18,
                        maxFontSize: 20,
                        textPadding: EdgeInsets.only(),
                        textStyle: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      CustomText(
                        text: "my status lorem ipsum",
                        minFontSize: 18,
                        maxFontSize: 20,
                        textPadding: EdgeInsets.only(bottom: 35, top: 5),
                      ),
                    ],
                  ),
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
