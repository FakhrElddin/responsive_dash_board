import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: DrawerItem(
          drawerItemModel: items[index],
        ),
      ),
      itemCount: items.length,
    );
  }
}
