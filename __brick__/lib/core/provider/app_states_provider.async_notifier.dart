import 'dart:async';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';

import '../../index.dart';

final appStatusAsyncNotifierProvider =
    AsyncNotifierProvider<AppStatusAsyncNotifier, ErrorStatus>(() => AppStatusAsyncNotifier());

class AppStatusAsyncNotifier extends AsyncNotifier<ErrorStatus> {
  AppStatusAsyncNotifier() : super();

  @override
  FutureOr<ErrorStatus> build() async {
    return NoneError();
    // final version = await ref.read(appConfigRepositoryProvider).getVersion();
    // bool result = await updateCheck(version.data!);
    // if (result) {
    //   return UpdateRequired();
    // } else {
    //   return NoneError();
    // }
  }

  Future<bool> updateCheck(VersionModel version) async {
    Version minimumVersion = Version.parse(version.minimumVersionName);
    final deviceInfo = await PackageInfo.fromPlatform();
    Version appVersion = Version.parse(deviceInfo.version);

    if (minimumVersion > appVersion) {
      return true;
    }
    return false;
  }
}
