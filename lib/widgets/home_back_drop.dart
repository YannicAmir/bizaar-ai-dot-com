import 'package:bizaar_ai_dot_com/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeBackDrop extends StatelessWidget {
  const HomeBackDrop({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Container(
    //         height: MediaQuery.of(context).size.height * .7,
    //         width: double.infinity, color: Colors.white),
    //     Expanded(
    //       child: Container(
    //           width: double.infinity, color: darkBizaarBlue),
    //     ),
    //   ],
    // );
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: const [0.2, 0.5, 0.8, 0.95],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.white.withOpacity(0.0),
            bizaarBlue.withOpacity(0.4),
            bizaarBlue,
            darkBizaarBlue
          ],
        ),
      ),
    );
  }
}
