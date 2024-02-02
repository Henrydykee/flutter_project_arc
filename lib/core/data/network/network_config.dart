 class NetworkConfig {
  Map<String, String>? headers;
}

/// A configuration object for use by a [NetworkInterceptor]. This is
/// used to modify network options before each request.
class NetworkConfigImpl implements NetworkConfig {
  @override
  Map<String, String>? headers;

  NetworkConfigImpl({this.headers});
}
