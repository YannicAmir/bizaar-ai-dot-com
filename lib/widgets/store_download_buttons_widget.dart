import 'package:flutter/material.dart';

class StoreDownloadButtonsWidget extends StatelessWidget {
  const StoreDownloadButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 185, child: Image.asset('images/apple_app_store_button.png')),
        const SizedBox(width: 20),
        SizedBox(width: 200, child: Image.asset('images/google_play_store_button.png')),
      ],
    );
  }
}