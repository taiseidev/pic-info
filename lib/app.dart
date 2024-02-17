import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants/size_constants.dart';
import 'i18n/strings.g.dart';
import 'presentation/navigation/router/router.dart';
import 'presentation/res/theme/theme.dart';
import 'providers/loading_notifier.dart';
import 'providers/scaffold_messenger_key.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return ScreenUtilInit(
      designSize: SizeConstants.defaultDeviceSize,
      child: MaterialApp.router(
        routerConfig: router,
        scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
        theme: getLightThemeData(),
        darkTheme: getDarkThemeData(),
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        builder: (_, child) =>
            child != null ? _GlobalLoading(child) : const SizedBox.shrink(),
      ),
    );
  }
}

class _GlobalLoading extends StatelessWidget {
  const _GlobalLoading(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          child,
          Consumer(
            builder: (_, ref, __) {
              final isLoading = ref.watch(loadingNotifierProvider);
              if (!isLoading) {
                return const SizedBox.shrink();
              }
              return const ColoredBox(
                color: Colors.black26,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      );
}
