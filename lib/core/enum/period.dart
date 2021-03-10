enum Period { AM, PM }

extension PeriodExtension on Period {
  String get periodInString {
    switch (this) {
      case Period.AM:
        return 'AM';
      case Period.PM:
        return 'PM';
      default:
        return throw Exception("No such period found!");
    }
  }
}
