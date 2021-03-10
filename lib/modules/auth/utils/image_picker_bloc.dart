import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerBloc {
  ImagePicker? _imagePicker;

  ImagePickerBloc() {
    _imagePicker = ImagePicker();
  }

  Future<File> getImageFromGallery() async {
    final pickedFile = await getImage(ImageSource.gallery);
    final photo = pickedFileToFile(pickedFile!);

    return photo;
  }

  Future<File> getImageFromCamera() async {
    final pickedFile = await getImage(ImageSource.camera);
    final photo = pickedFileToFile(pickedFile!);

    return photo;
  }

  Future<PickedFile?> getImage(ImageSource source) async {
    return await _imagePicker!
        .getImage(source: source, maxWidth: 300, maxHeight: 300);
  }

  File pickedFileToFile(PickedFile pickedFile) => File(pickedFile.path);
}
