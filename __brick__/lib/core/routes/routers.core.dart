part of 'app_router.dart';

@TypedGoRoute<SplashRoute>(
  path: Routers.splash,
)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: SplashPage());
  }
}

@TypedGoRoute<SignInRoute>(path: Routers.signIn)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: SignInPage());
  }
}

// 에러 스크린들
@TypedGoRoute<NetworkDisconnectedScreenRoute>(
  path: Routers.networkDisconnected,
)
class NetworkDisconnectedScreenRoute extends GoRouteData {
  const NetworkDisconnectedScreenRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: NetworkDisconnectedPage());
  }
}

@TypedGoRoute<WebViewScreenRoute>(
  path: Routers.webView,
)
class WebViewScreenRoute extends GoRouteData {
  const WebViewScreenRoute({required this.uri, required this.title});

  final String uri;
  final String title;

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: WebViewPage(
        uri: uri,
        title: title,
      ),
      name: Routers.webView,
    );
  }
}
