part of 'app_router.dart';

class MoreRoute extends GoRouteData {
  const MoreRoute();

  static const routes = <TypedRoute<RouteData>>[
    TypedGoRoute<MoreRoute>(
      path: Routers.more,
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const MorePage();
}
