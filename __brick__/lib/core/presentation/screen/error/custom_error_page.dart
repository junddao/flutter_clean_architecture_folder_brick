import 'package:dio/dio.dart';

import '../../../../index.dart';

/// Default error view widget
class CustomErrorPage extends ConsumerWidget {
  /// Creates a new instance of [ErrorView]
  const CustomErrorPage({super.key, required this.error, this.image, this.title, this.subTitle, this.onPressed});

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
      backgroundColor: context.grey50,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 50, color: context.black),
            const SizedBox(height: 30),
            Text(
              subTitle != null ? subTitle! : errorText,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.titleSmall!.copyWith(
                color: context.black,
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
              onPressed: () async {},
              child: const Text('돌아가기'),
            ),
          ],
        ),
      ),
    );
  }

  String getErrorText(Object? error) {
    if (error is DioException) {
      return ((error).response?.data?['message'] ?? '오류가 발생했습니다.\n로그인 페이지로 이동합니다.');
    }
    if (error is GoException) {
      return error.message;
    }
    return error.toString();
  }
}
