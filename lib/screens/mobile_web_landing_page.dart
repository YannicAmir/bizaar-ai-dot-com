import 'package:bizaar_ai_dot_com/constants/colors.dart';
import 'package:bizaar_ai_dot_com/responsiveness/responsiveness.dart';
import 'package:bizaar_ai_dot_com/routing/route_constants.dart';
import 'package:bizaar_ai_dot_com/widgets/store_download_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileWebLandingPage extends StatelessWidget {
  const MobileWebLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Text(
              'AI meets the \nstock market',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: darkBizaarBlue,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
                'Get free in-depth company data and answers \nto your stock market questions',
                style:
                    TextStyle(color: darkBizaarBlue, height: 1.5, fontSize: 16),
                textAlign: TextAlign.center),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            const StoreDownloadButtonsWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .025),
            SizedBox(
              width: ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.width * .5
                  : MediaQuery.of(context).size.width * .85,
              child: const Center(
                child: FadeInImage(
                  placeholder: AssetImage('images/blank_image.png'),
                  image: AssetImage('images/screenshot.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.pushNamed(RouteConstants.privacyPolicy);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                child: const Text('Privacy Policy',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
