import 'package:bizaar_ai_dot_com/constants/colors.dart';
import 'package:bizaar_ai_dot_com/screens/privacy_policy.dart';
import 'package:bizaar_ai_dot_com/widgets/store_download_buttons_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI meets the \nstock market',
                  style: TextStyle(
                      color: darkBizaarBlue,
                      fontSize: 100,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text(
                  'Get free in-depth company data and answers to your \nstock market questions',
                  style: TextStyle(
                      color: darkBizaarBlue, height: 2, fontSize: 24)),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              const StoreDownloadButtonsWidget(),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivacyPolicy()),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                  child: const Text('Privacy Policy',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .45,
          child: Center(
            child: Image.asset('images/screenshot.png'),
          ),
        ),
      ],
    );
  }
}
