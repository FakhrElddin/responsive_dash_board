import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpnesesItem extends StatelessWidget {
  const AllExpnesesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
            isActive: isActive,
          )
        : InActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
            isActive: isActive,
          );
  }
}
