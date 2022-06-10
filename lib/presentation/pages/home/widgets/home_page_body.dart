/* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/home/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/custom_list_tile.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({
    Key? key,
    required this.mapsState,
    required this.authState,
  }) : super(key: key);

  final MapsState mapsState;
  final AuthState authState;
  final Set users = {};
  @override
  Widget build(BuildContext context) {
    final currentUid = authState.userModel.id;

    final firestoreStream =
        FirebaseFirestore.instance.collection('users').where("uid", isNotEqualTo: currentUid).snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: firestoreStream,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting || snapshot.connectionState == ConnectionState.none) {
          return const CustomProgressIndicator(
            progressIndicatorColor: blackColor,
          );
        } else if (!snapshot.hasData) {
          return const CustomProgressIndicator(
            progressIndicatorColor: blackColor,
          );
        } else if (snapshot.hasData) {
          final usersDatas = snapshot.data.docs;

          for (var userDatas in usersDatas) {
            if (userDatas["latitude"] == null || userDatas["longitude"] == null) {
            } else {
              users.add(userDatas);
            }
          }
          context.read<MapsCubit>().filterUsersWithRespectToDistance(users: users);
          final usersWithInTenKilometers = mapsState.usersWithInTenKilometers;

          return usersWithInTenKilometers.isEmpty
              ? const Center(
                  child: CustomText(
                    textPadding: EdgeInsets.only(),
                    text: thereIsNoUser,
                    minFontSize: 25,
                    maxFontSize: 30,
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.only(top: 75),
                  itemCount: usersWithInTenKilometers.length,
                  itemBuilder: (context, index) {
                    final userId = usersWithInTenKilometers.elementAt(index);
                    final users = FirebaseFirestore.instance
                        .collection("users")
                        .doc(userId)
                        .get()
                        .then((value) => value)
                        .then((value) => value.data());

                    return FutureBuilder(
                      future: users,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final convertUserDataToMap =
                              Map<String, dynamic>.from(snapshot.data as Map<dynamic, dynamic>);
                          final List userDataList = convertUserDataToMap.values.toList();

                          final userName = userDataList[0];
                          final userStatus = userDataList[1];
                          final userProfileImg = userDataList[3];

                          return CustomListTile(
                            userImageUrl: userProfileImg,
                            userStatus: userStatus,
                            userName: userName,
                          );
                        }

                        return Container();
                      },
                    );
                  },
                );
        }
        return const CustomProgressIndicator(
          progressIndicatorColor: blackColor,
        );
      },
    );
  }
}
 */