import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class FormatUtils {
  static String fromUtcDateTime({String pattern = 'E, d MMM yyyy, HH:mm', DateTime? utcTime}) {
    return DateFormat(pattern).format(utcTime!.toLocal()).toString();
  }

  static DateTime toUtcDateTime({@required DateTime? local}) {
    return DateTime.utc(local!.year, local.month, local.day, local.hour,
        local.minute, local.second, local.millisecond, local.microsecond);
  }

  static String formatDateForHeader(String? timeStamp) {
    final DateTime dateTime = DateTime.parse(timeStamp!).toLocal();
    final DateTime comparator = DateTime(dateTime.year, dateTime.month, dateTime.day);
    if (DateTime.now().difference(comparator) >= Duration(days: 2)) {
      return DateFormat('E, d MMM yyyy').format(comparator).toString();
    } else if (DateTime.now().difference(comparator) >= Duration(days: 1)) {
      return 'Yesterday';
    } else {
      return 'Today';
    }
  }

  static String dateTimeFormatter(String? date, {String format = 'd MMM yyyy hh:mm a'}) {
    if (date == null || date.isEmpty || date == "") {
      return "";
    }
    DateTime now = DateTime.parse(date).toLocal();
    String formattedDate = DateFormat(format).format(now);
    return formattedDate.toString();
  }

  static getFileSize(String filepath, int decimals) async {
    var file = File(filepath);
    int bytes = await file.length();
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) +
        ' ' +
        suffixes[i];
  }
}

extension Precision on double {
  String toFloorString([int fractionDigits = 2]) {
    num mod = pow(10, fractionDigits.toDouble());
    String res =
        ((this * mod).floor().toDouble() / mod).toStringAsFixed(fractionDigits);
    if (!res.replaceAll(RegExp(r"0*$"), "").endsWith('.')) {
      res = res.replaceAll(RegExp(r"0*$"), "");
    }
    return res;
  }
}
