class RouteNameBuilder {
  static const homeResource = 'home';
  static const sectionsResource = 'sections';
  static const reservationsResource = 'reservations';
  static const settingsResource = "settings";
  static const clinicResource = "clinic";
  static const tabsResource = "tabs";
  static const onBoarding = "onBoarding";
  static const mapResource = 'map';
  static const loginResource = "onBoarding/login";
  static const signupResource = "onBoarding/signup";
  static const smsCodeVerifyResource = 'smsCodeVerify';
  static const paymentMethodResource = 'paymentMethod';
  static const updateProfilePhoto = 'updateProfilePhoto';
  static const updateDisplayName = 'updateDisplayName';
  static const viewallTopRatedClinics = 'viewAllTopRatedClinics';
  static const viewallNearbyClinics = 'viewallNearbyClinics';
  static const addReviewResource = 'addReview';
  static const accountSettingsResource = 'accountSettings';

  static String homeTab() => '$homeResource';
  static String sectionsTab() => '$sectionsResource';
  static String reservationsTab() => '$reservationsResource';
  static String moreTab() => '$settingsResource';
  static String aboutUs() => '$settingsResource/about';
  static String callUs() => '$settingsResource/callUs';
  static String language() => '$settingsResource/language';
  static String clinicJoin() => '$settingsResource/clinicJoin';
  static String clinicNomination() => '$settingsResource/clinicNomination';
  static String reservationStatus() => '$settingsResource/reservationStatus';
  static String accountSettingsUpdateDisplayName() =>
      "$accountSettingsResource/updateDisplayName";
  static String accountSettingsUpdatePhoto() =>
      "$accountSettingsResource/updatePhoto";

  static String characterById(int id) => '$homeResource/$id';
  static String smsCodeVerification(
          String phoneNo, String verificationId, int resendToken) =>
      '$smsCodeVerifyResource/$phoneNo/$verificationId/$resendToken';
  static String paymentMethod(double price, int reservationId) =>
      "$paymentMethodResource/$reservationId/$price";
  static String sectionById(String id) => "$sectionsResource/$id";
  static String reservationById(String id, String status) =>
      '$reservationsResource/$id/$status';
  static String clinicByID(int id) => '$clinicResource/$id';
  static String bookAppointment() => '$clinicResource/bookAppointment';
  static String confirmAppointment() => '$clinicResource/confirmAppointment';
  static String getRateClinicByID(int id) => '$clinicResource/$id/rate';
  static String rateClinicByID(int id) => '$clinicResource/$id/addRate';
  static String mapViewByCord(
          double lat, double long, double originLat, double originLong) =>
      '$mapResource/$lat/$long/$originLat/$originLong';
  static String addReview(String id) => '$addReviewResource/$id';

  static String quoteList() => '$sectionsResource';
}
