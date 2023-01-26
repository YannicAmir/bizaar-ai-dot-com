import 'package:bizaar_ai_dot_com/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const BizaarAiDotCom());

  setUrlStrategy(PathUrlStrategy());
}

class BizaarAiDotCom extends StatelessWidget {
  const BizaarAiDotCom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bizaar AI',
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
