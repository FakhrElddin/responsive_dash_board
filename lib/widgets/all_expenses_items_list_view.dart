import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expneses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpnesesItem(
              allExpensesItemModel: items[0],
              isActive: selectedIndex == 0 ? true : false,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpnesesItem(
              allExpensesItemModel: items[1],
              isActive: selectedIndex == 1 ? true : false,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpnesesItem(
              allExpensesItemModel: items[2],
              isActive: selectedIndex == 2 ? true : false,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //   children: items.asMap().entries.map((e) {
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(e.key);
    //         },
    //         child: Padding(
    //           padding:
    //               EdgeInsets.symmetric(horizontal: e.key == 1 ? 12.0 : 0.0),
    //           child: AllExpnesesItem(
    //             allExpensesItemModel: e.value,
    //             isActive: selectedIndex == e.key ? true : false,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void updateIndex(int index) {
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
