import 'package:bizaar_ai_dot_com/routing/route_constants.dart';
import 'package:bizaar_ai_dot_com/screens/comapny_profile.dart';
import 'package:bizaar_ai_dot_com/screens/home.dart';
import 'package:bizaar_ai_dot_com/screens/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.home,
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(child: Home()),
      ),
      GoRoute(
        name: RouteConstants.privacyPolicy,
        path: '/privacy-policy',
        pageBuilder: (context, state) =>
            const MaterialPage(child: PrivacyPolicy()),
      ),
      GoRoute(
        name: RouteConstants.companyProfile,
        path: '/company-profile/:ticker',
        pageBuilder: (context, state) => MaterialPage(
          child: CompanyProfile(
            tickerSymbol: state.params['ticker']!,
          ),
        ),
      ),
    ],
  );
}
