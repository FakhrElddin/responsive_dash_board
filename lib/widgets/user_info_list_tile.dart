import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoListTileModel,
    this.padding,
  });

  final UserInfoListTileModel userInfoListTileModel;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Card(
        color: const Color(0xffFAFAFA),
        margin: const EdgeInsets.only(right: 0),
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(userInfoListTileModel.image),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                userInfoListTileModel.title,
                style: AppStyles.textStyleSemiBold16(context),
              ),
            ),
            subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                userInfoListTileModel.subTitle,
                style: AppStyles.textStyleRegular12(context).copyWith(
                  color: const Color(0xffAAAAAA),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
