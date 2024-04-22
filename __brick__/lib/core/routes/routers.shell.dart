part of 'app_router.dart';

@TypedStatefulShellRoute<TabShellRouteData>(
  branches: [
    TypedStatefulShellBranch<HomeBranchData>(
      routes: HomeRoute.routes,
    ),

    //profiles
    TypedStatefulShellBranch<MoreBranchData>(
      routes: MoreRoute.routes,
    ),
  ],
)
class TabShellRouteData extends StatefulShellRouteData {
  const TabShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return TabPage(
      navigationShell: navigationShell,
    );
  }

  static const String $restorationScopeId = 'tab_shell';
}

class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();

  static const String $restorationScopeId = 'home_branch_data';
}

class MoreBranchData extends StatefulShellBranchData {
  const MoreBranchData();

  static const String $restorationScopeId = 'more_branch_data';
}
