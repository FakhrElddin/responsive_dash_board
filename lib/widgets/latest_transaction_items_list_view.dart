import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionItemsListView extends StatelessWidget {
  const LatestTransactionItemsListView({super.key});

  static const List<UserInfoListTileModel> items = [
    UserInfoListTileModel(
      image: Assets.imagesMadrani,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoListTileModel(
      image: Assets.imagesJosua,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoListTileModel(
      image: Assets.imagesMadrani,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  padding: const EdgeInsets.only(right: 12),
                  userInfoListTileModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     padding: EdgeInsets.zero,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTile(
    //         userInfoListTileModel: items[index],
    //       ),
    //     ),
    //     itemCount: items.length,
    //   ),
    // );
  }
}
