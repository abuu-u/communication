import 'package:auto_route/auto_route.dart';
import 'package:communication/application/auth/auth_bloc.dart';
import 'package:communication/application/bloc/locale_bloc.dart';
import 'package:communication/generated/l10n.dart';
import 'package:communication/injection.dart';
import 'package:communication/presentation/core/theme.dart';
import 'package:communication/presentation/routes/app_router.gr.dart';
import 'package:communication/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<LocaleBloc>(),
        ),
      ],
      child: BlocBuilder<LocaleBloc, LocaleState>(
        builder: (context, state) {
          return MaterialApp(
            onGenerateTitle: (context) => S.of(context).title,
            home: const SplashPage(),
            builder: ExtendedNavigator.builder(
              router: AppRouter(),
              builder: (context, extendedNav) => Theme(
                data: theme,
                child: extendedNav,
              ),
            ),
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: state.locale,
            localeResolutionCallback: (locale, supportedLocales) => locale,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
