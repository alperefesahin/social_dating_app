import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.only(top: 5, right: 25, left: 25),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, right: 15),
                  child: CachedNetworkImage(
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    imageUrl: userImageUrl,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(60)),
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
                        text: "Emir yorulmaz",
                        minFontSize: 18,
                        maxFontSize: 20,
                        textPadding: EdgeInsets.only(),
                      ),
                      CustomText(
                        text: "my status lorem ipsum",
                        minFontSize: 18,
                        maxFontSize: 20,
                        textPadding: EdgeInsets.only(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.circle_filled),
              iconSize: 15,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
