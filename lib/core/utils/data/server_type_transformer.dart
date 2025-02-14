// ignore_for_file: unnecessary_cast

class ServerTypeTransformer {
  static toDoubleFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! double) return double.parse(anyType.toString());
    return anyType as double;
  }

  static toStringFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! String) return anyType.toString();
    return anyType;
  }

  static toIntFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! int) return int.parse(anyType.toString());
    return anyType;
  }

  static toMapFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! Map) return {"key": anyType};
    return anyType;
  }
}
