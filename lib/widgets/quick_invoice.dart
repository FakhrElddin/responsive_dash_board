import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          //QuickInvoiceForm(),
          Row(
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
          ),
        ],
      ),
    );
  }
}
