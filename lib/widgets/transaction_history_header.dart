import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.textStyleSemiBold20(context),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
          ),
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.textStyleMedium16(context).copyWith(
              color: const Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
