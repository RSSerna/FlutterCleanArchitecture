import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/language/screen/languege_screen.dart';
import 'router_paths.dart';
import 'routes.dart';

final router = GoRouter(
  initialLocation: RouterPaths.login,
  routes: [
    //Password
    GoRoute(
      path: RouterPaths.password_forgotten,
      builder: (BuildContext context, GoRouterState state) =>
          const PasswordForgottenScreen(),
    ),
    GoRoute(
      path: RouterPaths.change_password_from_profile,
      builder: (BuildContext context, GoRouterState state) =>
          const ChangePasswordFromProfileScreen(),
    ),
    GoRoute(
      path: RouterPaths.change_forgotten_password,
      builder: (BuildContext context, GoRouterState state) =>
          const ChangeForgottenPasswordScreen(),
    ),
    //Language
    GoRoute(
      path: RouterPaths.language,
      builder: (BuildContext context, GoRouterState state) =>
          const LanguageScreen(),
    ),
  ],
);
