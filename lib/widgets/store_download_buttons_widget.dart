import 'package:bizaar_ai_dot_com/responsiveness/responsiveness.dart';
import 'package:flutter/material.dart';

class StoreDownloadButtonsWidget extends StatelessWidget {
  const StoreDownloadButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: ResponsiveWidget.isSmallScreen(context) ? 150 : 185,
            child: Image.asset('images/apple_app_store_button.png')),
        const SizedBox(width: 20),
        SizedBox(
            width: ResponsiveWidget.isSmallScreen(context) ? 165 : 200,
            child: Image.asset('images/google_play_store_button.png')),
      ],
    );
  }
}
