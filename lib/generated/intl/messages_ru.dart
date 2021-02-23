// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static m0(city) => "${Intl.select(city, {'tashkent': 'Ташкент', 'other': 'Other', })}";

  static m1(gender) => "${Intl.gender(gender, female: 'Женщина', male: 'Мужчина', other: 'Other')}";

  static m2(label) => "${Intl.select(label, {'aboutCompany': 'О компании', 'aboutProducts': 'О продукте', 'aboutNovelty': 'О новинках', 'aboutPrograms': 'О программах', 'aboutPrice': 'Об отпускной цене дистрибьютора', 'supervisorPmiPhone': 'Телефон Супервайзера PMI', 'supervisorDdrPhone': 'Телефон Супервайзера DDR', 'hotlinePhone': 'Телефон горячей линии производства', 'email': 'Эл. почта', 'other': 'Other', })}";

  static m3(object) => "${object} должен состоять из цифр";

  static m4(object, count) => "${object} должен состоять из ${count} цифр";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "birthDate" : MessageLookupByLibrary.simpleMessage("Дата рождения"),
    "call" : MessageLookupByLibrary.simpleMessage("Позвонить"),
    "city" : MessageLookupByLibrary.simpleMessage("Город"),
    "codeExpired" : MessageLookupByLibrary.simpleMessage("Срок действия кода истек!"),
    "contacts" : MessageLookupByLibrary.simpleMessage("Контакты"),
    "gender" : MessageLookupByLibrary.simpleMessage("Пол"),
    "getCities" : m0,
    "getGender" : m1,
    "getHomePageButtonLabel" : m2,
    "individualTaxpayerNumber" : MessageLookupByLibrary.simpleMessage("ИНН Фирмы"),
    "individualTaxpayerNumberAlreadyInUse" : MessageLookupByLibrary.simpleMessage("ИНН уже используется"),
    "information" : MessageLookupByLibrary.simpleMessage("Информация"),
    "insufficientAge" : MessageLookupByLibrary.simpleMessage("Недостаточный возраст"),
    "invalidDateFormat" : MessageLookupByLibrary.simpleMessage("Неверный формат даты"),
    "invalidPhoneNumber" : MessageLookupByLibrary.simpleMessage("Неверный номер телефона!"),
    "invalidVerificationCode" : MessageLookupByLibrary.simpleMessage("Неверный проверочный код!"),
    "language" : MessageLookupByLibrary.simpleMessage("Язык"),
    "name" : MessageLookupByLibrary.simpleMessage("ФИО"),
    "nan" : m3,
    "phone" : MessageLookupByLibrary.simpleMessage("Номер телефона"),
    "register" : MessageLookupByLibrary.simpleMessage("ЗАРЕГИСТРИРОВАТЬСЯ"),
    "requiredField" : MessageLookupByLibrary.simpleMessage("Обязательное поле"),
    "sendEmail" : MessageLookupByLibrary.simpleMessage("Написать сообщение по Email"),
    "sendSms" : MessageLookupByLibrary.simpleMessage("Написать сообщение"),
    "sendSmsByTelegram" : MessageLookupByLibrary.simpleMessage("Написать сообщение по Telegram"),
    "serverError" : MessageLookupByLibrary.simpleMessage("Ошибка сервера!"),
    "shouldContainAmountNumbers" : m4,
    "signIn" : MessageLookupByLibrary.simpleMessage("Регистрация"),
    "title" : MessageLookupByLibrary.simpleMessage("App Name"),
    "verificationCode" : MessageLookupByLibrary.simpleMessage("Код подтверждения")
  };
}
