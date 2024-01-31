library toptrumps.router;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:top_trumps_cp/views/desktop/add_deck_desktop.dart';
import 'package:top_trumps_cp/views/desktop/home_desktop.dart';
import 'package:top_trumps_cp/views/mobile/add_deck_mobile.dart';
import 'package:top_trumps_cp/views/mobile/home_mobile.dart';
import 'package:top_trumps_cp/views/shared/error_view.dart';

import 'routes.dart';

final class WidgetRouter extends StatelessWidget {
  late final String _routeName;

  late final bool _isDesktop;

  WidgetRouter({super.key, required String routeName}) {
    _routeName = routeName;
  }

  WidgetRouter.home({super.key}) {
    _routeName = Routes.home;
  }

  WidgetRouter.addDeck({super.key}) {
    _routeName = Routes.addDeck;
  }

  static const List<String> _desktopPlatforms = ["macos", "windows", "linux"];

  @override
  Widget build(BuildContext context) {
    _isDesktop = _desktopPlatforms.contains(Platform.operatingSystem);
    switch (_routeName) {
      case Routes.home:
        return _isDesktop ? const HomeDesktop() : const HomeMobile();
      case Routes.addDeck:
        return _isDesktop ? const AddDeckDesktop() : const AddDeckMobile();
      default:
        return const ErrorView();
    }
  }
}
