import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My card',
          style: AppStyles.textStyleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
