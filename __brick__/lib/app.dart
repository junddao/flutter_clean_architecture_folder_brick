import 'package:flutter_localizations/flutter_localizations.dart';

import 'flavors.dart';
import 'index.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: F.title,
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      // darkTheme: const MaterialTheme(TextTheme()).dark(),
      localizationsDelegates: const [
        //다국어 지원
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', 'KR'),
        Locale('en', 'US'),
      ],
      builder: (context, child) {
        Widget actualChild = _flavorBanner(
          child: child!,
          ref: ref,
          show: F.appFlavor != Flavor.prod ? true : false,
        );
        return MediaQuery.withClampedTextScaling(
          maxScaleFactor: 1.0,
          minScaleFactor: 1.0,
          child: actualChild,
        );
      },
    );
  }

  Widget _flavorBanner({
    required Widget child,
    required WidgetRef ref,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.bottomStart,
              message: F.name,
              color: Colors.green.withOpacity(0.6),
              textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0, letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : Container(
              child: child,
            );
}
