import 'package:flutter/cupertino.dart';


onKeyPressed(String s, TextEditingController controller, {int length = 6}) {
  if (s.toLowerCase() == 'clear') {
    controller.text = '';
    return;
  }
  if (s.toLowerCase() == 'backspace') {
    final currentText = controller.text;
    if (currentText.isEmpty) return;
    if (currentText.length == 1) controller.text = '';
    controller.text = currentText.substring(0, currentText.length - 1);
    return;
  }
  if (controller.text.length != length) {
    controller.text += s;
  }
  if ( length == 0) {
    controller.text += s;
  }
}


void fundonKeyPressed(String s, TextEditingController controller, {int length = 6}) {
  if (s.toLowerCase() == 'clear') {
    controller.text = '';
    return;
  }
  if (s.toLowerCase() == 'backspace') {
    final currentText = controller.text;
    if (currentText.isEmpty) return;
    if (currentText.length == 1) {
      controller.text = '';
      return;
    }
    controller.text = currentText.substring(0, currentText.length - 1);
    return;
  }

  if (length == 0 || controller.text.replaceAll(",", "").replaceAll(".", "").length < length) {
    controller.text += s;
  }
}




// // void fundonKeyPressed(String s, TextEditingController controller, {int length = 6}) {
// //   if (s.toLowerCase() == 'clear') {
// //     controller.text = '';
// //     return;
// //   }
// //   if (s.toLowerCase() == 'backspace') {
// //     final currentText = controller.text;
// //     if (currentText == null || currentText.isEmpty) return;
// //     if (currentText.length == 1) {
// //       controller.text = '';
// //       return;
// //     }
// //     final newText = currentText.substring(0, currentText.length - 1);
// //     controller.text = _insertCommas(newText);
// //     return;
// //   }
// //
// //   final currentText = controller.text + s;
// //   controller.text = _insertCommasAndRemoveLeadingZero(currentText, length: length);
// // }
// //
// // String _insertCommasAndRemoveLeadingZero(String text, {int length = 6}) {
// //   var textWithoutCommas = text.replaceAll(',', '');
// //
// //   // Check if the text starts with '0' and remove it if it does
// //   if (textWithoutCommas.startsWith('0')) {
// //     textWithoutCommas = textWithoutCommas.substring(1);
// //   }
// //
// //   final formattedText = StringBuffer();
// //   for (int i = 0; i < textWithoutCommas.length; i++) {
// //     formattedText.write(textWithoutCommas[i]);
// //     if ((i + 1) % 3 == 0 && (i + 1) != textWithoutCommas.length) {
// //       formattedText.write(',');
// //     }
// //   }
// //   return formattedText.toString();
// // }
//
//
//
// // void fundonKeyPressed(String s, TextEditingController controller, {int length = 6}) {
// //   if (s.toLowerCase() == 'clear') {
// //     controller.text = '';
// //     return;
// //   }
// //   if (s.toLowerCase() == 'backspace') {
// //     final currentText = controller.text;
// //     if (currentText == null || currentText.isEmpty) return;
// //     if (currentText.length == 1) {
// //       controller.text = '';
// //       return;
// //     }
// //     final newText = currentText.substring(0, currentText.length - 1);
// //     controller.text = _insertCommas(newText);
// //     return;
// //   }
// //
// //   final currentText = controller.text + s;
// //   controller.text = _insertCommas(currentText, length: length);
// // }
// //
// String _insertCommas(String text, {int length = 6}) {
//   final textWithoutCommas = text.replaceAll(',', '');
//   final formattedText = StringBuffer();
//   for (int i = 0; i < textWithoutCommas.length; i++) {
//     formattedText.write(textWithoutCommas[i]);
//     if ((i + 1) % 3 == 0 && (i + 1) != textWithoutCommas.length) {
//       formattedText.write(',');
//     }
//   }
//   return formattedText.toString();
// }















