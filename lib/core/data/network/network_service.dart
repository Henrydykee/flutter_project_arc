import 'network_service_response.dart';

abstract class NetworkService {
  /// Make a GET request to `url`
  Future<NetworkServiceResponse> get(String url, {Map<String, dynamic> queryParameters});

  /// Make a POST request to `url` with data in `body`.
  Future<NetworkServiceResponse> post(String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  });


  /// Make a PUT request to `url` with data in `body`.
  Future<NetworkServiceResponse> put(String url,
      {Map<String, dynamic> body, Map<String, dynamic> queryParameters});

  /// Make a PATCH request to `url` with data in `body`.
  Future<NetworkServiceResponse> patch(String url,
      {Map<String, dynamic> body, Map<String, dynamic> queryParameters});

  /// Make a delete request to `url`
  Future<NetworkServiceResponse> delete(String url,
      {Map<String, dynamic> body,  Map<String, dynamic> queryParameters});

  /// Download a file from server
//  Future<File> download(String url, {String path});
}
