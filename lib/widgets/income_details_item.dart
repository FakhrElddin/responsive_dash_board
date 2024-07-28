import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});

  final IncomeDetailsItemModel incomeDetailsItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 12,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyles.textStyleRegular16,
      ),
      trailing: Text(
        incomeDetailsItemModel.percentage,
        style: AppStyles.textStyleMedium16.copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
