import 'dart:developer';

import '../../../index.dart';

class RiverpodObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider.name != null) {
      log(
        name: 'riverpod(update)',
        '''
  "provider": "${provider.name ?? provider.runtimeType}",
  "stateValue": "$previousValue -> $newValue"''',
      );
    }
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    if (provider.name != null) {
      log(
        name: 'riverpod(dispose)',
        '''"provider": "${provider.name ?? provider.runtimeType}" didDisposeProvider''',
      );
    }
  }

  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    if (provider.name != null) {
      log(
        name: 'riverpod(add)',
        '''"provider": "${provider.name ?? provider.runtimeType}" didAddProvider''',
      );
    }
  }
}
