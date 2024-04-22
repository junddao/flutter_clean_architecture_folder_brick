// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $signInRoute,
      $networkDisconnectedScreenRoute,
      $webViewScreenRoute,
      $tabShellRouteData,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/sign_in',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/sign_in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $networkDisconnectedScreenRoute => GoRouteData.$route(
      path: '/network_disconnected',
      parentNavigatorKey: NetworkDisconnectedScreenRoute.$parentNavigatorKey,
      factory: $NetworkDisconnectedScreenRouteExtension._fromState,
    );

extension $NetworkDisconnectedScreenRouteExtension
    on NetworkDisconnectedScreenRoute {
  static NetworkDisconnectedScreenRoute _fromState(GoRouterState state) =>
      const NetworkDisconnectedScreenRoute();

  String get location => GoRouteData.$location(
        '/network_disconnected',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $webViewScreenRoute => GoRouteData.$route(
      path: '/web_view',
      parentNavigatorKey: WebViewScreenRoute.$parentNavigatorKey,
      factory: $WebViewScreenRouteExtension._fromState,
    );

extension $WebViewScreenRouteExtension on WebViewScreenRoute {
  static WebViewScreenRoute _fromState(GoRouterState state) =>
      WebViewScreenRoute(
        uri: state.uri.queryParameters['uri']!,
        title: state.uri.queryParameters['title']!,
      );

  String get location => GoRouteData.$location(
        '/web_view',
        queryParams: {
          'uri': uri,
          'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tabShellRouteData => StatefulShellRouteData.$route(
      restorationScopeId: TabShellRouteData.$restorationScopeId,
      factory: $TabShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          restorationScopeId: HomeBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $HomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: MoreBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/more',
              factory: $MoreRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $TabShellRouteDataExtension on TabShellRouteData {
  static TabShellRouteData _fromState(GoRouterState state) =>
      const TabShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MoreRouteExtension on MoreRoute {
  static MoreRoute _fromState(GoRouterState state) => const MoreRoute();

  String get location => GoRouteData.$location(
        '/more',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
