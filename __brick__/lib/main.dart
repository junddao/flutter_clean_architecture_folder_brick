import 'package:flutter/material.dart';

void main() {
  // Flutter 엔진과 위젯의 바인딩 작업
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      observers: [
        RiverpodObserver(),
      ],
      child: const App(),
    ),
  );
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

/// 플러터 환경설정 세팅
Future<void> platformSetup() async {
  // 가로모드 제어
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 다국어 기본 한국어로 적용
  Intl.defaultLocale = 'ko_KR';

  //TODO: Firebase 초기화
}
