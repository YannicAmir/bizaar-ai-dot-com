import 'package:bizaar_ai_dot_com/constants/colors.dart';
import 'package:bizaar_ai_dot_com/routing/route_constants.dart';
import 'package:bizaar_ai_dot_com/widgets/store_download_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              SizedBox(height: MediaQuery.of(context).size.height * .1),
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
                  context.pushNamed(RouteConstants.privacyPolicy);
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
        Container(
          width: MediaQuery.of(context).size.width * .45,
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .08),
          child: const Center(
            child: FadeInImage(
              placeholder: AssetImage('images/blank_image.png'),
              image: AssetImage('images/screenshot.png'),
            ),
          ),
        ),
      ],
    );
  }
}
