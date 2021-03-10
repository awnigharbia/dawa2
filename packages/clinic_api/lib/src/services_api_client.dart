import 'package:cloud_firestore/cloud_firestore.dart';

import '../clinic_api.dart';

class ClinicServicesApiClient {
  final FirebaseFirestore? _firebaseFirestore;

  CollectionReference? _servicesCollection;

  ClinicServicesApiClient({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance {
    _servicesCollection = _firebaseFirestore!.collection("services");
  }

  Future<List<ClinicService>> getServices(List<String> serviceIdList) async {
    List<ClinicService> services = [];

    for (var serviceId in serviceIdList) {
      final serviceData = await _servicesCollection!.doc(serviceId).get();

      final service =
          ClinicService.fromJson(serviceData.id, serviceData.data()!);

      services.add(service);
    }

    return services;
  }
}
