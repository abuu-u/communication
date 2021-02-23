import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:communication/domain/auth/auth_failure.dart';
import 'package:communication/domain/auth/i_auth_facade.dart';
import 'package:communication/domain/auth/user_entity.dart';
import 'package:communication/domain/auth/value_objects.dart';
import 'package:communication/infrastructure/core/firestore_helpers.dart';

import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firebaseFirestore,
  );

  @override
  Future<Option<UserEntity>> getUser() =>
      Future.sync(() => optionOf(_firebaseAuth.currentUser?.toDomain()));

  @override
  Future<void> verifyNumber({
    @required PhoneAuthCredential credential,
  }) async {
    await _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<Option<String>> getVerifiedNumber() =>
      Future.sync(() => optionOf(_firebaseAuth.currentUser?.phoneNumber));

  @override
  Future<Either<AuthFailure, Unit>> verifyNumberByCode({
    @required String verificationId,
    @required String smsCode,
    int resendToken,
  }) async {
    try {
      await _firebaseAuth.signInWithCredential(
        PhoneAuthProvider.credential(
          smsCode: smsCode,
          verificationId: verificationId,
        ),
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidVerificationCode());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    @required AppLanguage appLanguage,
    @required Name name,
    @required BirthDate birthDate,
    @required City city,
    @required Gender gender,
    IndividualTaxpayerNumber individualTaxpayerNumber,
  }) async {
    final appLanguageStr = appLanguage.getOrCrash().languageCode;
    final nameStr = name.getOrCrash();
    final birthDateStr = birthDate.getOrCrash();
    final cityStr = city.getOrCrash();
    final genderStr = gender.getOrCrash();
    final individualTaxpayerNumberStr =
        individualTaxpayerNumber.value.getOrElse(() => null);

    final userDocument = await _firebaseFirestore.userDocument();

    try {
      await userDocument.set({
        'app_language': appLanguageStr,
        'name': nameStr,
        'birth_date': birthDateStr,
        'city': cityStr,
        'gender': genderStr,
        'individual_taxpayer_number': individualTaxpayerNumberStr,
      });

      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
