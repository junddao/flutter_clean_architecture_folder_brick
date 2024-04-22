import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../../../../index.dart';

/// Default error view widget
class NetworkErrorPage extends ConsumerWidget {
  /// Creates a new instance of [ErrorView]
  const NetworkErrorPage({super.key, required this.error, this.image, this.title, this.subTitle, this.onPressed});

  final Object? error;
  final String? image;
  final String? title;
  final String? subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String errorText = getErrorText(error);
    final String errorCode = error is DioException ? (error as DioException).response?.statusCode.toString() ?? '' : '';

    return Scaffold(
      backgroundColor: context.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wifi_off_outlined,
              size: 50,
              color: context.white,
            ),
            const SizedBox(height: 30),
            Text(
              subTitle != null ? subTitle! : errorText,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.titleSmall!.copyWith(
                color: context.white,
              ),
            ),
            if (errorCode.isNotEmpty)
              Text(
                '($errorCode)',
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleSmall!.copyWith(
                  color: context.white,
                ),
              ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                await Connectivity().checkConnectivity().then((status) {
                  if (status != ConnectivityResult.none) {
                    const SignInRoute().go(context);
                  }
                });
              },
              child: const Text('돌아가기'),
            ),
          ],
        ),
      ),
    );
  }

  String getErrorText(Object? error) {
    if (error is DioException) {
      return ((error).response?.data?['message'] ?? '일시적인 오류가 발생했습니다.\n잠시 후 다시 시도해 주세요.');
    }
    if (error is GoException) {
      return error.message;
    }
    return error.toString();
  }
}
