import 'package:bizaar_ai_dot_com/responsiveness/responsiveness.dart';
import 'package:bizaar_ai_dot_com/screens/landing_page.dart';
import 'package:bizaar_ai_dot_com/screens/mobile_web_landing_page.dart';
import 'package:bizaar_ai_dot_com/widgets/home_back_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 35 : 50,
              width: ResponsiveWidget.isSmallScreen(context) ? 35 : 50,
              child: Image.asset('images/bizaar_ai_logo_white.png')),
        ),
        centerTitle: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarColor: Colors.white),
      ),
      body: ResponsiveWidget(
        smallScreen: Stack(
          children: const [
            HomeBackDrop(),
            MobileWebLandingPage(),
          ],
        ),
        mediumScreen: Stack(
          children: const [
            HomeBackDrop(),
            MobileWebLandingPage(),
          ],
        ),
        largeScreen: Stack(
          children: const [
            HomeBackDrop(),
            LandingPage(),
          ],
        ),
      ),
    );
  }
}
