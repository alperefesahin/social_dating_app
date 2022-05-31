import 'package:dartz/dartz.dart';
import 'package:social_dating_app/domain/auth/auth_failure.dart';
import 'package:social_dating_app/domain/auth/auth_user_model.dart';

abstract class IAuthService {
  Stream<AuthUserModel> get authStateChanges;
  Future<void> signOut();
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
  });
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  });
}
