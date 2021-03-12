import 'package:authentication_api/enums/auth_result.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthException {
  final FirebaseAuthException e;
  AuthResultStatus? status;
  AuthException(this.e);

  handleException() {
    switch (e.code) {
      case "invalid-emai":
        status = AuthResultStatus.invalidEmail;
        break;
      case "wrong-password":
        status = AuthResultStatus.wrongPassword;
        break;
      case "user-not-found":
        status = AuthResultStatus.userNotFound;
        break;
      case "user-disabled":
        status = AuthResultStatus.userDisabled;
        break;
      case "operation-not-allowed":
        status = AuthResultStatus.operationNotAllowed;
        break;
      case "account-exists-with-different-credential":
        status = AuthResultStatus.emailAlreadyExists;
        break;
      case "invalid-verification-code":
        status = AuthResultStatus.invaildVerificationCode;
        break;
      default:
        status = AuthResultStatus.undefined;
    }
    return status;
  }

  generateExceptionMessage() {
    String errorMessage;
    switch (status) {
      case AuthResultStatus.invalidEmail:
        errorMessage = "Your email address appears to be malformed.";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "Your password is wrong.";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "User with this email doesn't exist.";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "User with this email has been disabled.";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "Signing in with Email and Password is not enabled.";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage =
            "The email has already been registered. Please login or reset your password.";
        break;
      case AuthResultStatus.invaildVerificationCode:
        errorMessage = "The verification code is not valid.";
        break;
      default:
        errorMessage = "An undefined Error happened.";
    }

    return errorMessage;
  }
}
