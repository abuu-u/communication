import 'dart:ui';

import 'package:communication/constants/language_native_names.dart';

extension Language on Locale {
  String get nativeName => languageNativeNames[languageCode];
}
