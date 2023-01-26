import 'package:bizaar_ai_dot_com/constants/colors.dart';
import 'package:bizaar_ai_dot_com/constants/privacy_policy_statement.dart';
import 'package:bizaar_ai_dot_com/responsiveness/responsiveness.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox spacer = const SizedBox(height: 30);
    SizedBox spacer2 = const SizedBox(height: 15);

    TextStyle headerStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.w600, color: bizaarBlueDark);
    TextStyle paragraphStyle = TextStyle(fontSize: 18, color: bizaarBlueDark);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .07,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? 35
                    : 50,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? 35
                    : 50,
                child: const FadeInImage(
                  placeholder: AssetImage('images/blank_image.png'),
                  image: AssetImage('images/bizaar_ai_logo_white.png'),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .15,
                  bottom: 30,
                  top: 30),
              alignment: Alignment.centerLeft,
              color: bizaarBlueDark,
              child: const Text(
                'Privacy',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              height: ResponsiveWidget.isSmallScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.height * 2.7
                  : MediaQuery.of(context).size.height * 1.5,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .15),
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(privacyPolicyStatementIntro, style: paragraphStyle),
                  spacer,
                  Text(infoCollectionHeader, style: headerStyle),
                  spacer2,
                  Text(privacyPolicyStatementInfoColletionStatement,
                      style: paragraphStyle),
                  spacer,
                  Text(infoSharingHeader, style: headerStyle),
                  spacer2,
                  Text(infoSharingStatement, style: paragraphStyle),
                  spacer,
                  Text(caliPrivacyHeader, style: headerStyle),
                  spacer2,
                  Text(caliPrivacyStatement, style: paragraphStyle),
                  spacer,
                  Text(securityHeader, style: headerStyle),
                  spacer2,
                  Text(securityStatement, style: paragraphStyle),
                  spacer,
                  Text(policyChangesHeader, style: headerStyle),
                  spacer2,
                  Text(policyChangesStatement, style: paragraphStyle),
                  spacer,
                  Text(contactUsHeader, style: headerStyle),
                  spacer2,
                  Text(contactUsStatement, style: paragraphStyle),
                  spacer,
                  Text(privacyPolicyStatementOutro, style: paragraphStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
