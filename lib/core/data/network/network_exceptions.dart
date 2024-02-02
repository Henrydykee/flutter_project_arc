import 'package:dio/dio.dart';

import 'network_service_response.dart';

/// Thrown on unhandled API exceptions
class ApiResponseException implements Exception {
  String? exceptionMessage;
  dynamic data;

  ApiResponseException({this.exceptionMessage, this.data});

  @override
  String toString() => '{exceptionMessage: $exceptionMessage, data: $data}';
}

class NetworkConnectivityException implements Exception {
  String? exceptionMessage = "No internet connectivity";
  NetworkConnectivityException({this.exceptionMessage});

  @override
  String toString() => '{exception: $exceptionMessage}';
}


NetworkServiceResponse handleException(DioException e, StackTrace trace) {
  if (e.response != null) {
    print(e.response?.data["message"]);
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    dynamic errorData = {"error": e};
    if (e.response!.statusCode! >= 500) {
      return NetworkServiceResponse(
        result: NetworkResult.SERVER_ERROR,
        data: errorData,
        error: e.response?.data["message"] ?? "Internal sever error",
      );

    }
    if (e.response!.statusCode! == 401) {
      print(e.response.toString());
      return NetworkServiceResponse(
        result: NetworkResult.UNAUTHORISED,
        data: errorData,
        error: e.response?.data["message"] ?? "Unauthorized",
      );
    } else {
      return NetworkServiceResponse(
        data: errorData,
        error: e.response?.data["message"] ?? "Looks like something is wrong, we are working to fix it",
      );
    }

    // switch (e.response.statusCode) {
    //   case 400:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.BAD_REQUEST,
    //       data: errorData,
    //       error: "Bad request to the server",
    //     );
    //     break;
    //   case 422:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.BAD_REQUEST,
    //       data: errorData,
    //       error: "Invalid request body payload",
    //     );
    //     break;
    //
    //   case 401:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.UNAUTHORISED,
    //       data: errorData,
    //       error: "Unauthorized access to the server",
    //     );
    //     break;
    //
    //   case 403:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.FORBIDDEN,
    //       data: errorData,
    //       error: "Access forbidden by server, try again",
    //     );
    //     break;
    //
    //   case 404:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.NO_SUCH_ENDPOINT,
    //       data: errorData,
    //       error: "Requested data was not found",
    //     );
    //     break;
    //
    //   case 405:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.METHOD_DISALLOWED,
    //       data: errorData,
    //       error: e.message,
    //     );
    //     break;
    //
    //   case 408:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.SERVER_TIMEOUT,
    //       data: errorData,
    //       error: e.message,
    //     );
    //     break;
    //
    //   case 429:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.TOO_MANY_REQUESTS,
    //       data: errorData,
    //       error: "You have exceeded your request limit",
    //     );
    //     break;
    //
    //   case 500:
    //   case 501:
    //   case 502:
    //   case 503:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.SERVER_ERROR,
    //       data: errorData,
    //       error: "Error occurred we are working on it",
    //     );
    //     break;
    //
    //   default:
    //     return NetworkServiceResponse(
    //       result: NetworkResult.FAILURE,
    //       data: {"error": "Unhandled Network Error"},
    //       error: "Request to server failed ",
    //     );
    // }
  } else {
    // Something happened in setting up or sending the request that triggered an Error
    return NetworkServiceResponse(
      result: NetworkResult.FAILURE,
      data: {"error": e.message},
      error: e.message,
    );
  }
}

//TODO Backend needs to response with Unique codes for errors.
// TODO To prevent unreadable errors to propagate to UI
final errorCodes = {"ERROR_CODE": "Custom message"};
