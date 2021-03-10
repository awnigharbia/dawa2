import 'package:settings_api/settings_api.dart';

class SettingsRepository {
  final SettingsApiClient _settingsApiClient;

  SettingsRepository({
    SettingsApiClient? settingsApiClient,
  }) : _settingsApiClient = settingsApiClient ?? SettingsApiClient();

  Future clinicJoin(ClinicJoin clinicJoin) async {
    await _settingsApiClient.joinClinic(clinicJoin);
  }

  Future sendFeedback(Feedback feedback) async {
    await _settingsApiClient.sendFeedback(feedback);
  }
}
