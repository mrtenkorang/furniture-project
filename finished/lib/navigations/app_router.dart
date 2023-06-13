import 'package:github/screens/details.dart';
import 'package:github/screens/home.dart';
import 'package:github/utils/app_constants.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: AppConstants.home,
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: AppConstants.details,
        path: '/details',
        builder: (context, state) => const FurnitureDetailsPage(),
      ),
    ],
  );
}
