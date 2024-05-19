import 'package:go_router/go_router.dart';
import 'package:bicycle/features/details/presentation/pages/details_page.dart';
import 'package:bicycle/features/home/presentation/pages/home_page.dart';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
    path: "/",
    builder: (context, state) {
      return const HomePage();
    },
  ),
  GoRoute(
    path: "/details",
    builder: (context, state) {
      return const DetailsPage();
    },
  )
]);
