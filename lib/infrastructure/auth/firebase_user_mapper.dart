import 'package:communication/domain/auth/user_entity.dart';
import 'package:communication/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  UserEntity toDomain() {
    return UserEntity(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
