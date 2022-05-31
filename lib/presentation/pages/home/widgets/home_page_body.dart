import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/application/maps/maps_cubit.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/custom_list_tile.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
   /*  required this.mapsState, */
  }) : super(key: key);

/*   final MapsState mapsState; */
  @override
  Widget build(BuildContext context) {
   /*  final currentUid = context.read<AuthState>().userModel.id;
    //! bunu kaldırınca duxelıyor sorun?
    final firestoreStream =
        FirebaseFirestore.instance.collection('users').where("uid", isNotEqualTo: currentUid).snapshots(); */

    return Text("data");/* StreamBuilder<QuerySnapshot>(
      stream: firestoreStream,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting || snapshot.connectionState == ConnectionState.none) {
          return const CustomProgressIndicator(
            progressIndicatorColor: blackColor,
          );
        } else if (snapshot.hasData) {
          final usersDatas = snapshot.data.docs;
          final List users = [];

          for (var userDatas in usersDatas) {
            users.add(userDatas);
          }

          context.read<MapsCubit>().filterUsersWithRespectToDistance(users: users);
          final usersWithInTenKilometers = mapsState.usersWithInTenKilometers;
          return usersWithInTenKilometers.length == 0
              ? Center(child: Text("there is no user"))
              : ListView.builder(
                  padding: const EdgeInsets.only(top: 75),
                  itemCount: usersWithInTenKilometers.length,
                  itemBuilder: (context, index) {
                    return const CustomListTile(
                      userImageUrl: "https://picsum.photos/200/300",
                      userStatus: "userStatus",
                      userName: "userName",
                      podcastOwnersName: "podcastOwnersName",
                    );
                  },
                );
        }
        return const CustomProgressIndicator(
          progressIndicatorColor: blackColor,
        );
      },
    ); */
  }
}
