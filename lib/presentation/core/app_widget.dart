import 'package:auto_route/auto_route.dart';
import 'package:communication/application/auth/auth_bloc.dart';
import 'package:communication/application/bloc/locale_bloc.dart';
import 'package:communication/generated/l10n.dart';
import 'package:communication/injection.dart';
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
                data: ThemeData.light().copyWith(
                  inputDecorationTheme: InputDecorationTheme(
                    errorMaxLines: 2,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDADADA),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 4,
                    ),
                  ),
                  primaryColor: const Color(0xFF6200EE),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color(0xFF6200EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.all(19),
                    ),
                  ),
                  appBarTheme: const AppBarTheme(centerTitle: true),
                ),
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
