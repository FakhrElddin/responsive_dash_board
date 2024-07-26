import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text, this.textColor,
  });

  final Color backgroundColor;
  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
          foregroundColor: Colors.grey,
        ),
        onPressed: () {},
        child:  Text(
          text,
          style: AppStyles.textStyleSemiBold18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
