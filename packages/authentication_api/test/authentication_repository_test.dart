import 'package:authentication_api/authentication_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth_platform_interface/src/method_channel/method_channel_firebase_auth.dart';
import 'package:firebase_auth_platform_interface/src/platform_interface/platform_interface_firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

const _mockFirebaseUserId = 'mock-uid';
const _mockFirebaseUserPhone = 'mock-phone';
int mockHandleId = 0;
int get nextMockHandleId => mockHandleId++;

class MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

class MockPhoneService extends Mock implements PhoneAuthService {}

class MockFirebaseUser extends Mock implements firebase_auth.User {
  @override
  String get uid => _mockFirebaseUserId;

  @override
  String get phoneNumber => _mockFirebaseUserPhone;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final List<MethodCall> log = <MethodCall>[];
  FirebaseAuthPlatform auth;

  MethodChannelFirebase.channel.setMockMethodCallHandler((call) async {
    if (call.method == 'Firebase#initializeCore') {
      return [
        {
          'name': defaultFirebaseAppName,
          'options': {
            'api': '123',
            'appId': '123',
            'messagingSenderId': '123',
            'projectId': '123',
          },
          'pluginConstants': const <String, String>{},
        }
      ];
    }

    if (call.method == 'Firebase#initializeApp') {
      return <String, dynamic>{
        'name': call.arguments['appName'],
        'options': call.arguments['options'],
        'pluginConstants': const <String, String>{},
      };
    }

    return null;
  });

  TestWidgetsFlutterBinding.ensureInitialized();

  group('AuthenticationRepository', () {
    firebase_auth.FirebaseAuth firebaseAuth;
    AuthenticationApiClient authenticationRepository;

    setUpAll(() async {
      FirebaseApp app = await Firebase.initializeApp();
      firebaseAuth = MockFirebaseAuth();
      authenticationRepository = AuthenticationApiClient(
        firebaseAuth: firebaseAuth,
      );

      MethodChannelFirebaseAuth.channel.setMockMethodCallHandler((call) async {
        log.add(call);

        switch (call.method) {
          case 'Auth#registerChangeListeners':
            return {};
          case "Auth#verifyPhoneNumber":
            return null;
        }
      });

      auth = MethodChannelFirebaseAuth(app: app);
    });

    test('create firebase internally when not injected', () {
      expect(() => AuthenticationApiClient(), isNot(throwsAssertionError));
    });

    group("verifyPhoneNumber", () {
      const String testPhoneNumber = '+447123123456';
      const String testSmsCode = '123456';
      final Duration testTimeout = Duration(seconds: 30);
      test('throws AssertionError when phone is null', () async {
        expect(() => authenticationRepository.verifyPhone(null),
            throwsAssertionError);
      });

      test(
          'throws AssertionError when [verificationCode, resendToken, smsCode] is null',
          () {
        expect(() => authenticationRepository.authWithPhone(null, null, null),
            throwsAssertionError);
      });

      test('returns success', () async {
        await auth.verifyPhoneNumber(
            phoneNumber: testPhoneNumber,
            verificationCompleted: null,
            verificationFailed: null,
            codeSent: null,
            codeAutoRetrievalTimeout: null,
            autoRetrievedSmsCodeForTesting: testSmsCode);

        expect(log, <Matcher>[
          isMethodCall("Auth#registerChangeListeners",
              arguments: <String, dynamic>{'appName': defaultFirebaseAppName}),
          isMethodCall(
            'Auth#verifyPhoneNumber',
            arguments: <String, dynamic>{
              'appName': defaultFirebaseAppName,
              'handle': 0,
              'phoneNumber': testPhoneNumber,
              'timeout': testTimeout.inMilliseconds,
              'forceResendingToken': null,
              'autoRetrievedSmsCodeForTesting': testSmsCode,
            },
          ),
        ]);
      });
    });
  });
}
