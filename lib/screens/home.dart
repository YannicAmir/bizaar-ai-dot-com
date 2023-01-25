import 'package:bizaar_ai_dot_com/screens/landing_page.dart';
import 'package:bizaar_ai_dot_com/widgets/home_back_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SizedBox(
            height: 50,
            width: 50,
            child: Image.asset('images/bizaar_ai_logo_white.png')),
        centerTitle: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarColor: Colors.white),
      ),
      body: Stack(
        children: const [
          HomeBackDrop(),
          LandingPage(),
        ],
      ),
    );
  }
}
