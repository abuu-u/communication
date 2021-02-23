import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:communication/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_event.dart';
part 'locale_state.dart';
part 'locale_bloc.freezed.dart';

@lazySingleton
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleState.initial());

  @override
  Stream<LocaleState> mapEventToState(
    LocaleEvent event,
  ) async* {
    yield* event.map(
      localeChanged: (e) async* {
        await S.load(e.locale);
        yield LocaleState(locale: e.locale);
      },
    );
  }
}
