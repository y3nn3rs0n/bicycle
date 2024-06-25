import 'package:bicycle/features/details/presentation/pages/details_page.dart';
import 'package:bicycle/features/hats/presentation/pages/hats_page.dart';
import 'package:bicycle/features/home/presentation/pages/home_page.dart';
import 'package:bicycle/features/mountain_routes/presentation/pages/mountain_page.dart';
import 'package:bicycle/features/splash/presentation/pages/splash_screen.dart';
import 'package:bicycle/features/urban_routes/presentation/pages/urban_page.dart';
import 'package:flutter/material.dart';

enum Routes {
  splash,
  hats,
  home,
  details,
  mountains,
  urban
}

class _Page {
  static const String splash = "/";
  static const String hats = "hats";
  static const String mountains = "mountains";
  static const String urban = "urban";
  static const String home = "home";
  static const String details = "details";

  static const Map<Routes, String> _pageMap = {
    Routes.splash: splash,
    Routes.home: home,
    Routes.details: details,
    Routes.hats: hats,
    Routes.mountains: mountains,
    Routes.urban: urban
  };

  static String? page(Routes routes) => _pageMap[routes];
}

Route _pageRoute({
  required Widget page,
  RouteSettings? routeSettings,
}) {
  return MaterialPageRoute(
    settings: routeSettings,
    builder: (BuildContext context) => page,
  );
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static NavigatorState get state => navigatorKey.currentState!;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _Page.home:
        {
          return _pageRoute(
            page: const HomePage(),
                   routeSettings: settings,
          );
        }
        case _Page.mountains:
        {
          return _pageRoute(
            page: const MountainPage(),
                   routeSettings: settings,
          );
        }
        case _Page.urban:
        {
          return _pageRoute(
            page: const UrbanPage(),
                   routeSettings: settings,
          );
        }
         case _Page.hats:
        {
          return _pageRoute(
            page: const HatsPage(),
                   routeSettings: settings,
          );
        }
      case _Page.details:
        return _pageRoute(
          page: DetailsPage(
              params: settings.arguments as Map<String, dynamic>,
          ),
          routeSettings: settings,
        );
      default:
        return _pageRoute(
          page: const SplashScreen(),
                 routeSettings: settings,
        );
    }
  }

  static Future push<T>(Routes route, {Map<String, dynamic>? arguments}) async {
    if (AppNavigator.navigatorKey.currentState == null) return;
    return state.pushNamed(_Page.page(route)!, arguments: arguments);
  }

  static Future pushNamedAndRemoveUntil<T>(Routes route,
      {Map<String, dynamic>? arguments}) async {
    if (AppNavigator.navigatorKey.currentState == null) return;
    return state.pushNamedAndRemoveUntil(
        _Page.page(route)!, (Route routes) => false,
        arguments: arguments);
  }

  static void pop({Map<String, dynamic>? params}) => state.pop(params);

  static void popToHome() => state.popUntil((route) => route.isFirst);
}

class HomeScreen {
  const HomeScreen();
}
