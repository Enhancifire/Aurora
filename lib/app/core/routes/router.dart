import 'package:aurora/app/core/routes/app_routes.dart';
import 'package:aurora/app/features/home/views/home.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
class Router extends _$Router {
  List<RouteBase> _getAuthRoutes() {
    return [];
  }

  List<RouteBase> _getHomeRoutes() {
    return [
      GoRoute(
          path: AppRoutes.home,
          builder: (context, state) {
            return const HomeScreen();
          }),
    ];
  }

  @override
  GoRouter build() {
    return GoRouter(
      initialLocation: AppRoutes.home,
      routes: [
        ..._getAuthRoutes(),
        ..._getHomeRoutes(),
      ],
    );
  }
}
