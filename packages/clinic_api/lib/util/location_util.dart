import 'package:geolocator/geolocator.dart';

class LocationServices {
  Position? _position;

  Position get position => _position!;

  Future<Position> handleLocation({fromSaved: false, save: false}) async {
    bool isGrantedPermission = await isGrantedPerms();

    if (isGrantedPermission) {
      Position position = await getLocation(fromSaved: fromSaved, save: save);

      return position;
    } else {
      LocationPermission permission = await requestPerm();
      bool isGranted = validatePerms(permission);

      if (isGranted) {
        Position position = await getLocation(fromSaved: fromSaved, save: save);

        return position;
      }

      throw new Exception("Permission not granted.");
    }
  }

  // reload is to force get a new location
  Future<Position> getLocation(
      {reload: false, save: false, fromSaved: false}) async {
    if (_position != null && !reload) {
      // Location already there so no need to get it again
      return _position!;
    } else {
      // Getting location for the first time
      try {
        _position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best,
        );

        return _position!;
      } catch (e) {
        return _position!;
      }
    }
  }

  isGPSEnabled() async {
    if (!(await Geolocator.isLocationServiceEnabled())) {
      return false;
    } else {
      return true;
    }
  }

  bool validatePerms(permission) {
    switch (permission) {
      case LocationPermission.always:
      case LocationPermission.whileInUse:
        return true;
      case LocationPermission.denied:
      case LocationPermission.deniedForever:
        return false;
      default:
        throw new Exception("Permission unknown $permission");
    }
  }

  Future<bool> isGrantedPerms() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (!await isGPSEnabled()) {
      return false;
    }

    return validatePerms(permission);
  }

  requestPerm() async {
    LocationPermission permission = await Geolocator.requestPermission();
    return permission;
  }

  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  Future<bool> openAppSettings() async {
    return await Geolocator.openAppSettings();
  }
}
