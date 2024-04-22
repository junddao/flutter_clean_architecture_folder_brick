part of 'app_router.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const routes = <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(
      path: Routers.home,
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
