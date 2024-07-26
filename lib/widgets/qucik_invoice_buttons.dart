import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            text: 'Add more details',
            textColor: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: Color(0xff4EB7F2),
            text: 'Send Money',
          ),
        ),
      ],
    );
  }
}
