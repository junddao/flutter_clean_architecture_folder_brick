import '../../index.dart';

part 'app_router.g.dart';
part 'routers.core.dart';
part 'routers.home.dart';
part 'routers.more.dart';
part 'routers.shell.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>((ref) {
  ref.listen(
    appStatusAsyncNotifierProvider,
    (previous, next) {
      if (next.isLoading || next.hasError) {
        return;
      }
      final context = rootNavigatorKey.currentContext;
      if (context != null) {
        GoRouter.maybeOf(context)?.refresh();
      }
    },
  );

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: <NavigatorObserver>[
      NavObserver(),
      // FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    initialLocation: const SplashRoute().location,
    routes: $appRoutes,
    redirect: (context, state) async {
      // return const SignInRoute().location;

      final nowSplashPage = state.uri.toString().contains(const SplashRoute().location);
      if (nowSplashPage) {
        return const SignInRoute().location;
      }

      final nowSignInPage = state.uri.toString().contains(const SignInRoute().location);
      if (nowSignInPage) {
        return const HomeRoute().location;
      }
    },
  );
});
