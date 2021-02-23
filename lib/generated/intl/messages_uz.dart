// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uz locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'uz';

  static m0(city) => "${Intl.select(city, {'tashkent': 'Toshkent', 'other': 'Other', })}";

  static m1(gender) => "${Intl.gender(gender, female: 'Ayol', male: 'Erkak', other: 'Other')}";

  static m2(label) => "${Intl.select(label, {'aboutCompany': 'Kompaniya haqida', 'aboutProducts': 'Mahsulotlar haqida', 'aboutNovelty': 'Yangiliklar haqida', 'aboutPrograms': 'Dasturlar haqida', 'aboutPrice': 'Distribyutor sotish narxi', 'supervisorPmiPhone': 'PMI Supervisor raqami', 'supervisorDdrPhone': 'DDR Supervisor raqami', 'hotlinePhone': 'Ishlab chiqarish telefoni', 'email': 'Elektron pochta', 'other': 'Other', })}";

  static m3(object) => "${object} raqamli bo\'lishi kerak";

  static m4(object, count) => "${object} ${count} raqamdan iborat bo\'lishi kerak";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "birthDate" : MessageLookupByLibrary.simpleMessage("Tug\'ilgan kun"),
    "call" : MessageLookupByLibrary.simpleMessage("Qo\'ng\'iroq qilish"),
    "city" : MessageLookupByLibrary.simpleMessage("Shahar"),
    "codeExpired" : MessageLookupByLibrary.simpleMessage("Kod muddati tugagan!"),
    "contacts" : MessageLookupByLibrary.simpleMessage("Kontaktlar"),
    "gender" : MessageLookupByLibrary.simpleMessage("Jins"),
    "getCities" : m0,
    "getGender" : m1,
    "getHomePageButtonLabel" : m2,
    "individualTaxpayerNumber" : MessageLookupByLibrary.simpleMessage("Firmaning TIN"),
    "individualTaxpayerNumberAlreadyInUse" : MessageLookupByLibrary.simpleMessage("TIN allaqachon ishlatilmoqda"),
    "information" : MessageLookupByLibrary.simpleMessage("Ma`lumot"),
    "insufficientAge" : MessageLookupByLibrary.simpleMessage("Yoshi yetarli emas"),
    "invalidDateFormat" : MessageLookupByLibrary.simpleMessage("Sana formati yaroqsiz"),
    "invalidPhoneNumber" : MessageLookupByLibrary.simpleMessage("Noto\'g\'ri telefon raqami!"),
    "invalidVerificationCode" : MessageLookupByLibrary.simpleMessage("Tasdiqlash kodi noto‘g‘ri!"),
    "language" : MessageLookupByLibrary.simpleMessage("Til"),
    "name" : MessageLookupByLibrary.simpleMessage("FISH"),
    "nan" : m3,
    "phone" : MessageLookupByLibrary.simpleMessage("Telefon raqami"),
    "register" : MessageLookupByLibrary.simpleMessage("Ro\'yxatdan o\'tish"),
    "requiredField" : MessageLookupByLibrary.simpleMessage("Majburiy maydon"),
    "sendEmail" : MessageLookupByLibrary.simpleMessage("Elektron pochtaga xabar yuborish"),
    "sendSms" : MessageLookupByLibrary.simpleMessage("Xabar yozish"),
    "sendSmsByTelegram" : MessageLookupByLibrary.simpleMessage("Telegramdan xabar yozish"),
    "serverError" : MessageLookupByLibrary.simpleMessage("Server xatosi!"),
    "shouldContainAmountNumbers" : m4,
    "signIn" : MessageLookupByLibrary.simpleMessage("Ro\'yxatdan o\'tish"),
    "title" : MessageLookupByLibrary.simpleMessage("App Name"),
    "verificationCode" : MessageLookupByLibrary.simpleMessage("Tasdiqlash kodi")
  };
}
