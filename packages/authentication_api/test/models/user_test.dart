import 'package:flutter_test/flutter_test.dart';
import 'package:user_api/user_api.dart';

main() {
  group('user', () {
    const id = 'mock-id';
    const phone = 'mock-phone';
    test('throws AssertionError when id is null', () {
      expect(() => User(id: null, phone: phone, createdAt: DateTime.now()),
          throwsAssertionError);
    });

    test('throws AssertionError when phone is null', () {
      expect(() => User(id: id, phone: null, createdAt: DateTime.now()),
          throwsAssertionError);
    });

    test('throws AssertionError when createdAt is null', () {
      expect(() => User(id: id, phone: phone, createdAt: null),
          throwsAssertionError);
    });

    test('uses value equality', () {
      expect(User(id: id, phone: phone, createdAt: DateTime.now()),
          User(id: id, phone: phone, createdAt: DateTime.now()));
    });
  });
}
