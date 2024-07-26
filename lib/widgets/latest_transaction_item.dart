import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    super.key,
    required this.latestTransactionItemModel,
  });

  final UserInfoListTileModel latestTransactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 15.5,
        ),
        leading: SvgPicture.asset(latestTransactionItemModel.image),
        title: Text(
          latestTransactionItemModel.title,
          style: AppStyles.textStyleSemiBold16,
        ),
        subtitle: Text(
          latestTransactionItemModel.subTitle,
          style: AppStyles.textStyleRegular12,
        ),
      ),
    );
  }
}
