import 'package:auto_route/auto_route_annotations.dart';
import 'package:communication/presentation/home/home_page.dart';
import 'package:communication/presentation/sign_in/sign_in_page.dart';
import 'package:communication/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: HomePage),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
