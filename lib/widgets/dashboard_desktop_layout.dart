import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_darwer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDarwer(),
        ),
      ],
    );
  }
}
