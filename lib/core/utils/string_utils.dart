class StringUtils {
  static bool isNullOrEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  static bool isNotNullOrEmpty(String? value) {
    return value != null && value.isNotEmpty;
  }

  static String removeCharacter(String value) {
    if (isNullOrEmpty(value)) {
      return "";
    }
    return value.trim().replaceAll(RegExp(r"[^\s\w]"), "");
  }

  static bool equalsIgnoreCase(String a, String b) {
    if (isNullOrEmpty(a) || isNullOrEmpty(b)) {
      return false;
    }
    return a.toLowerCase() == b.toLowerCase();
  }
}
