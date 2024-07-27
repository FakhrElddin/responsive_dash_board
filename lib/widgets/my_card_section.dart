import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.textStyleSemiBold20,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(),
      ],
    );
  }
}
