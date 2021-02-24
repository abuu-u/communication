import 'package:communication/application/auth/sign-in-form/sign_in_form_bloc.dart';
import 'package:communication/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:communication/application/bloc/locale_bloc.dart';
import 'package:communication/generated/l10n.dart';
import 'package:communication/extensions/language.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

part 'app_language_widget.dart';
part 'birth_date_widget.dart';
part 'city_widget.dart';
part 'gender_widget.dart';
part 'individual_taxpayer_number_widget.dart';
part 'name_widget.dart';
part 'phone_number_widget.dart';
part 'verification_code_widget.dart';

String getLable(
  String label, {
  @required bool isRequired,
}) =>
    '$label${isRequired ? '*' : ''}';
