import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:social_dating_app/domain/location/user_location_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/pages/feed/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/feed/widgets/custom_list_tile.dart';
import 'package:social_dating_app/presentation/pages/maps/constants/texts.dart';
import 'package:social_dating_app/providers/maps/maps_provider.dart';

class FeedPage extends ConsumerWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapsState = ref.watch(mapsStateProvider);
    final usersInFeed = mapsState.usersInFeed;
    final currentUserLocation = mapsState.currentUserLocation;

    return currentUserLocation == UserLocationModel.empty()
        ? const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                loadingOrPermission,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ListView.builder(
              itemCount: usersInFeed.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          autoClose: true,
                          onPressed: (context) {},
                          backgroundColor: greenColor,
                          foregroundColor: whiteColor,
                          icon: Icons.message,
                          label: messageText,
                        ),
                      ],
                    ),
                    child: CustomListTile(
                      userImageUrl: usersInFeed[index].imageUrl,
                      userStatus: usersInFeed[index].status,
                      userName: usersInFeed[index].userName,
                    ),
                  ),
                );
              },
            ),
          );
  }
}
