import 'package:authentication_api/authentication_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:user_api/user_api.dart';

import 'phone_auth_service.dart';

class AuthenticationApiClient {
  AuthenticationApiClient({firebase_auth.FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _authService = PhoneAuthService();

  final firebase_auth.FirebaseAuth _firebaseAuth;
  PhoneAuthService _authService;

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User.empty] if the user is not authenticated.
  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      return firebaseUser != null ? firebaseUser.toUser : User.empty;
    });
  }

  Stream<User> get userProfile {
    return _firebaseAuth.userChanges().map((firebaseUser) {
      return firebaseUser != null ? firebaseUser.toUser : User.empty;
    });
  }

  firebase_auth.User get currentUser => _firebaseAuth.currentUser;

  /// Starts verification process with the provided [number]
  ///
  /// Throws an [AuthException] if process faild
  Future<PhoneAuthResponse> verifyPhone(String phone) async {
    assert(phone != null);

    return await _authService.verifyNumber(phone);
  }

  /// Auth user with provided [verificationId, resendToken, smsCode]
  ///
  /// Throws an [AuthException] if auth faild
  Future<void> authWithPhone(
      String verificationId, int resendToken, String smsCode) async {
    assert(verificationId != null && resendToken != null && smsCode != null);

    final credential =
        await _authService.getCredentials(verificationId, resendToken, smsCode);

    await _authService.auth(credential);
  }

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(
      id: uid,
      name: displayName,
      photo: photoURL ?? "",
      phone: phoneNumber,
      createdAt: metadata.creationTime,
      isNew: DateTime.now().difference(metadata.creationTime).inDays <= 2,
    );
  }
}
