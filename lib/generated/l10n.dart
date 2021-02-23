// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Name`
  String get title {
    return Intl.message(
      'App Name',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка сервера!`
  String get serverError {
    return Intl.message(
      'Ошибка сервера!',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Неверный номер телефона!`
  String get invalidPhoneNumber {
    return Intl.message(
      'Неверный номер телефона!',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Неверный проверочный код!`
  String get invalidVerificationCode {
    return Intl.message(
      'Неверный проверочный код!',
      name: 'invalidVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Срок действия кода истек!`
  String get codeExpired {
    return Intl.message(
      'Срок действия кода истек!',
      name: 'codeExpired',
      desc: '',
      args: [],
    );
  }

  /// `ИНН уже используется`
  String get individualTaxpayerNumberAlreadyInUse {
    return Intl.message(
      'ИНН уже используется',
      name: 'individualTaxpayerNumberAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get signIn {
    return Intl.message(
      'Регистрация',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Обязательное поле`
  String get requiredField {
    return Intl.message(
      'Обязательное поле',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `ФИО`
  String get name {
    return Intl.message(
      'ФИО',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Дата рождения`
  String get birthDate {
    return Intl.message(
      'Дата рождения',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточный возраст`
  String get insufficientAge {
    return Intl.message(
      'Недостаточный возраст',
      name: 'insufficientAge',
      desc: '',
      args: [],
    );
  }

  /// `Неверный формат даты`
  String get invalidDateFormat {
    return Intl.message(
      'Неверный формат даты',
      name: 'invalidDateFormat',
      desc: '',
      args: [],
    );
  }

  /// `Город`
  String get city {
    return Intl.message(
      'Город',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `{city, select, tashkent{Ташкент} other{Other}}`
  String getCities(Object city) {
    return Intl.select(
      city,
      {
        'tashkent': 'Ташкент',
        'other': 'Other',
      },
      name: 'getCities',
      desc: '',
      args: [city],
    );
  }

  /// `Номер телефона`
  String get phone {
    return Intl.message(
      'Номер телефона',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Код подтверждения`
  String get verificationCode {
    return Intl.message(
      'Код подтверждения',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `{object} должен состоять из цифр`
  String nan(Object object) {
    return Intl.message(
      '$object должен состоять из цифр',
      name: 'nan',
      desc: '',
      args: [object],
    );
  }

  /// `{object} должен состоять из {count} цифр`
  String shouldContainAmountNumbers(Object object, Object count) {
    return Intl.message(
      '$object должен состоять из $count цифр',
      name: 'shouldContainAmountNumbers',
      desc: '',
      args: [object, count],
    );
  }

  /// `Пол`
  String get gender {
    return Intl.message(
      'Пол',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `{gender, select, male{Мужчина} female{Женщина} other{Other}}`
  String getGender(String gender) {
    return Intl.gender(
      gender,
      male: 'Мужчина',
      female: 'Женщина',
      other: 'Other',
      name: 'getGender',
      desc: '',
      args: [gender],
    );
  }

  /// `ИНН Фирмы`
  String get individualTaxpayerNumber {
    return Intl.message(
      'ИНН Фирмы',
      name: 'individualTaxpayerNumber',
      desc: '',
      args: [],
    );
  }

  /// `ЗАРЕГИСТРИРОВАТЬСЯ`
  String get register {
    return Intl.message(
      'ЗАРЕГИСТРИРОВАТЬСЯ',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Информация`
  String get information {
    return Intl.message(
      'Информация',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `{label, select, aboutCompany{О компании} aboutProducts{О продукте} aboutNovelty{О новинках} aboutPrograms{О программах} aboutPrice{Об отпускной цене дистрибьютора} supervisorPmiPhone{Телефон Супервайзера PMI} supervisorDdrPhone{Телефон Супервайзера DDR} hotlinePhone{Телефон горячей линии производства} email{Эл. почта} other{Other}}`
  String getHomePageButtonLabel(Object label) {
    return Intl.select(
      label,
      {
        'aboutCompany': 'О компании',
        'aboutProducts': 'О продукте',
        'aboutNovelty': 'О новинках',
        'aboutPrograms': 'О программах',
        'aboutPrice': 'Об отпускной цене дистрибьютора',
        'supervisorPmiPhone': 'Телефон Супервайзера PMI',
        'supervisorDdrPhone': 'Телефон Супервайзера DDR',
        'hotlinePhone': 'Телефон горячей линии производства',
        'email': 'Эл. почта',
        'other': 'Other',
      },
      name: 'getHomePageButtonLabel',
      desc: '',
      args: [label],
    );
  }

  /// `Контакты`
  String get contacts {
    return Intl.message(
      'Контакты',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Позвонить`
  String get call {
    return Intl.message(
      'Позвонить',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Написать сообщение`
  String get sendSms {
    return Intl.message(
      'Написать сообщение',
      name: 'sendSms',
      desc: '',
      args: [],
    );
  }

  /// `Написать сообщение по Telegram`
  String get sendSmsByTelegram {
    return Intl.message(
      'Написать сообщение по Telegram',
      name: 'sendSmsByTelegram',
      desc: '',
      args: [],
    );
  }

  /// `Написать сообщение по Email`
  String get sendEmail {
    return Intl.message(
      'Написать сообщение по Email',
      name: 'sendEmail',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uz'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}