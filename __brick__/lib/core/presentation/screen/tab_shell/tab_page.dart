import '../../../../../index.dart';

class TabPage extends ConsumerStatefulWidget {
  const TabPage({
    super.key,
    // required this.child,
    required this.navigationShell,
  });

  // final Widget child;

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<TabPage> createState() => _TabScreenState();
}

class _TabScreenState extends ConsumerState<TabPage> {
  void get update => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return NavigationBar(
      onDestinationSelected: (int idx) => _onItemTapped(idx, ref),
      selectedIndex: widget.navigationShell.currentIndex,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        NavigationDestination(
          // selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.more),
          label: '더보기',
        ),
      ],
    );
  }

  void _onItemTapped(int index, WidgetRef ref) async {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
