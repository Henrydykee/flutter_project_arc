// import 'dart:io';
//
//
//
// class MediaPickerManager {
//   static final MediaPickerManager instance = new MediaPickerManager._internal();
//
//   factory MediaPickerManager() => instance;
//
//   MediaPickerManager._internal();
//   final ImagePicker imagePicker = ImagePicker();
//
//   Future<File?> pickMedia(ImageSource source) async {
//     try {
//       XFile? file =
//           await imagePicker.pickImage(source: source, imageQuality: 50);
//       if (file != null) {
//         return File(file.path);
//       }
//     } catch (e) {
//       logger.e("Error accessing media gallery $e");
//     }
//
//     return null;
//   }
// }
