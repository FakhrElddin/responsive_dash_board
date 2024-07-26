import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: customScrollBehavior(),
      theme: ThemeData().copyWith(
        textSelectionTheme: customTextSelectionTheme(),
      ),
      home: const DashboardView(),
    );
  }

  TextSelectionThemeData customTextSelectionTheme() {
    return TextSelectionThemeData(
      cursorColor: const Color(0xff4EB7F2),
      selectionColor: const Color(0xff4EB7F2).withOpacity(0.5),
      selectionHandleColor: const Color(0xff4EB7F2),
    );
  }

  ScrollBehavior customScrollBehavior() {
    return const MaterialScrollBehavior().copyWith(
      dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      },
    );
  }
}
