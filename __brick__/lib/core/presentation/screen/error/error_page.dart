import '../../../../index.dart';

sealed class ErrorStatus {
  final String routeLocation;
  ErrorStatus(this.routeLocation);
}

class NoneError extends ErrorStatus {
  NoneError() : super('');
}

class NetworkDisconnected extends ErrorStatus {
  NetworkDisconnected() : super(const NetworkDisconnectedScreenRoute().location);
}

class NetworkDisconnectedPage extends ConsumerWidget {
  const NetworkDisconnectedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(
          '네트워크가 연결되지 않았습니다.',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).refresh();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
