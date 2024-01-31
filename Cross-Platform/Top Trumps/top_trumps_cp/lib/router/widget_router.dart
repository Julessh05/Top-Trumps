library toptrumps.router;

import 'package:flutter/material.dart';
import 'package:top_trumps_cp/views/desktop/home_desktop.dart';
import 'package:top_trumps_cp/views/mobile/home_mobile.dart';
import 'routes.dart';
import 'dart:io';

final class WidgetRouter extends StatelessWidget {
  late final String _routeName;

  late final bool _isDesktop;

  WidgetRouter({super.key, required String routeName}) {
    _routeName = routeName;
  }

  WidgetRouter.home({super.key}) {
    _routeName = Routes.home;
  }

  static const List<String> _desktopPlatforms = ["macos", "windows", "linux"];

  @override
  Widget build(BuildContext context) {
    _isDesktop = _desktopPlatforms.contains(Platform.operatingSystem);
    switch(_routeName) {
      case Routes.home:
        return _isDesktop ? const HomeDesktop() : const HomeMobile();
      default:
        break;
  }
}
