import 'package:communication/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';
import 'user_entity.dart';

abstract class IAuthFacade {
  Future<Option<UserEntity>> getUser();
  Future<Option<String>> getVerifiedNumber();
  Future<void> verifyNumber({
    @required PhoneAuthCredential credential,
  });

  Future<Either<AuthFailure, Unit>> verifyNumberByCode({
    @required String verificationId,
    @required String smsCode,
    int resendToken,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    @required AppLanguage appLanguage,
    @required Name name,
    @required BirthDate birthDate,
    @required City city,
    @required Gender gender,
    IndividualTaxpayerNumber individualTaxpayerNumber,
  });
}
