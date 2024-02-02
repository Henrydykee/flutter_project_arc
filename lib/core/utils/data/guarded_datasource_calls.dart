
import 'dart:developer';
import '../../data/database/db_exceptions.dart';
import '../../data/network/network_exceptions.dart';
import '../error_helpers.dart';
import '../logger.dart';

/// Make an API call that internally handles exceptions. Throws a [NetworkFailure].
///
/// This is intended to always be used for ALL remoteDatasurce calls in the repository layer.
/// This means there'll be no need for API-related try-catch blocks in the repository layer.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
Future<T> guardedApiCall<T>(Function run, {String? source, bool showNetworkError = false}) async {
  try {
    final val = await run() as T;
    return val;
  } on ApiResponseException catch (e, s) {
    // await Sentry.captureException(e,stackTrace: s);
    throw getNetworkFailureFromApiFailure(
      e,
      s,
      errorCode: e.data,
    );
  } on NetworkConnectivityException catch (e, s) {
   // inject<SentryManager>().reportError(error: e, stackTrace: s);
   //  logger.e("Exception source >>>>> $source");
    throw NetworkFailure("Check your internet connection and try again");
  } catch (e, s) {
    log(e.toString().toString());
    // logger.e("Exception source >>>>> $source");
    // logger.e("Exception stack trace >>>>> $s");
    throw NetworkFailure(showNetworkError ?  e.toString() : "Something went wrong, we are trying to fix it");
  }
}

Future<T> guardedCacheAccess<T>(Function run, {String? source}) async {
  try {
    final val = await run() as T;
    return val;
  } catch (e, s) {
    log("---------${e.toString()}");
    logger.e("Exception source >>>>> $source");
    throw getCacheFailureFromDBFailure(
        DBFailure(
            "Sorry, error occurred while retrieving user data, please uninstall your app and reinstall. If this persist, contact support"),
        s);
  }
}
