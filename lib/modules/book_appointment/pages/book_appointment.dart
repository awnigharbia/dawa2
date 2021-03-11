import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/book_appointment/widgets/widgets.dart';
import 'package:dawa2/modules/clinic/clinic.dart';

class BookAppointmentSetup extends StatefulWidget {
  final BookAppointment? bookAppointment;

  const BookAppointmentSetup({
    Key? key,
    this.bookAppointment,
  }) : super(key: key);

  @override
  _BookAppointmentSetupState createState() => _BookAppointmentSetupState();
}

class _BookAppointmentSetupState extends State<BookAppointmentSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(LocaleIcon.backArrow(context)),
        ),
        title: Text(Localization.of(context)!.tr("makeAppointment")!),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            _BookAppointmentBody(bookAppointment: widget.bookAppointment!),
            BookAppointmentNext(clinic: widget.bookAppointment!.clinic!),
          ],
        ),
      ),
    );
  }
}

class _BookAppointmentBody extends StatelessWidget {
  final BookAppointment? bookAppointment;

  const _BookAppointmentBody({
    Key? key,
    this.bookAppointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MakeAppointmentClinicSection(bookAppointment: bookAppointment!),
            Spaces().meduimSpace(),
            MakeAppointmentSectionTitle(
                title: Localization.of(context)!.tr("services")!),
            ClinicService(services: bookAppointment!.services!),
            Spaces().meduimSpace(),
            Container(
              padding: EdgeInsets.only(top: 24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MakeAppointmentSectionTitle(
                      title: Localization.of(context)!.tr("availableDays")!),
                  Spaces().meduimSpace(),
                  ClinicAvailableDays(),
                  Spaces().meduimSpace(),
                  ClinicAvailableTime(clinic: bookAppointment!.clinic!),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
