import 'dart:async';

import 'package:authentication_api/models/auth_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_api/user_api.dart' as user_api;

class PhoneAuthService {
  FirebaseAuth _auth;
  user_api.UserApiClient _userClient;
  Completer<PhoneAuthResponse> c;

  PhoneAuthService() {
    _auth = FirebaseAuth.instance;
    _userClient = user_api.UserApiClient();
  }

  Future<PhoneAuthResponse> verifyNumber(String number) async {
    c = Completer();
    await _auth.verifyPhoneNumber(
      phoneNumber: number,
      verificationCompleted: handleVerificationCompleted,
      verificationFailed: handleVerificationFaild,
      codeSent: (String verificationId, int resendCode) =>
          c.complete(PhoneAuthResponse(verificationId, resendCode)),
      codeAutoRetrievalTimeout: handleAutoRerievalTimeout,
    );

    return c.future;
  }

  void handleVerificationCompleted(PhoneAuthCredential credential) async {
    await auth(credential);
  }

  void handleVerificationFaild(FirebaseAuthException e) {
    print(e.code);
    print(e.message);
    c.completeError(AuthException(e));
  }

  Future<AuthCredential> getCredentials(
      String verificationId, int resendToken, String smsCode) async {
    assert(verificationId != null && resendToken != null && smsCode != null);

    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    return phoneAuthCredential;
  }

  Future<UserCredential> auth(AuthCredential credential) async {
    assert(credential != null);
    try {
      return _auth.signInWithCredential(credential).then((value) async {
        await _userClient.saveUserToFirestore(
          user_api.User(
            id: value.user.uid,
            phone: value.user.phoneNumber,
            photo: value.user.photoURL ?? "",
            name: value.user.displayName ?? "",
            createdAt: DateTime.now(),
          ),
        );

        return value;
      });
    } catch (e) {
      throw AuthException(e);
    }
  }

  void handleAutoRerievalTimeout(String verificationId) => null;
}

class PhoneAuthResponse {
  final String verificationId;
  final int resendCode;

  PhoneAuthResponse(
    this.verificationId,
    this.resendCode,
  );
}
