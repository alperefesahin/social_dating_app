import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/domain/auth/auth_failure.dart';
import 'package:social_dating_app/domain/auth/i_auth_service.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';

class FirebaseAuthService implements IAuthService {
  FirebaseAuthService(this._read);

  final Reader _read;

  @override
  Stream<User?> get authStateChanges => _read(firebaseAuthProvider).authStateChanges();

  @override
  Future<void> signOut() async => await _read(firebaseAuthProvider).signOut();

  @override
  User? getCurrentUser() => _read(firebaseAuthProvider).currentUser;

  @override
  Stream<Either<AuthFailure, Tuple2<String, int?>>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
    required int? resendToken,
  }) async* {
    final StreamController<Either<AuthFailure, Tuple2<String, int?>>> streamController =
        StreamController<Either<AuthFailure, Tuple2<String, int?>>>();

    final firebaseAuth = _read(firebaseAuthProvider);

    await firebaseAuth.verifyPhoneNumber(
      forceResendingToken: resendToken,
      timeout: timeout,
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        //! Android Only!!!
        await firebaseAuth.signInWithCredential(credential);
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Wait for the user to enter the SMS code
        streamController.add(right(tuple2(verificationId, resendToken)));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      verificationFailed: (FirebaseAuthException e) {
        late final Either<AuthFailure, Tuple2<String, int?>> result;

        if (e.code == 'too-many-requests') {
          result = left(const AuthFailure.tooManyRequests());
        } else if (e.code == 'app-not-authorized') {
          result = left(const AuthFailure.deviceNotSupported());
        } else {
          result = left(const AuthFailure.serverError());
        }
        streamController.add(result);
      },
    );

    yield* streamController.stream;
  }

  @override
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final firebaseAuth = _read(firebaseAuthProvider);
      final firestore = _read(firestoreProvider);
      
      final PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      await firebaseAuth.signInWithCredential(phoneAuthCredential).then(
        (UserCredential userCredential) async {
          final user = userCredential.user;
          final uid = user!.uid;

          final currentUser = await firestore.collection("users").doc(uid).get();
          final currentUserData = currentUser.data()!;
          final bool isUserChecked = currentUserData["isUserChecked"];

          if (isUserChecked) {
            return;
          } else {
            firestore.collection("users").doc(uid).set(
              {
                "userPhone": user.phoneNumber,
                "uid": user.uid,
                "latitude": null,
                "longitude": null,
                "onlineStatus": false,
                "isUserChecked": false,
                "about": "",
                "userName": "",
                "status": "",
                "imageURL": "",
              },
              SetOptions(merge: true),
            );
          }
        },
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == "ınvalıd-verıfıcatıon-code" || e.code == "invalid-verification-code") {
        return left(const AuthFailure.invalidVerificationCode());
      }
      return left(const AuthFailure.serverError());
    }
  }
}
