import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:communication/domain/auth/i_auth_facade.dart';
import 'package:communication/domain/core/errors.dart';
import 'package:communication/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}
