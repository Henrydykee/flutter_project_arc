import 'dart:async';
import 'dart:ui';

class TimerUtil {
  final int? milliseconds;
  VoidCallback? action;
  Timer? _timer;
  TimerUtil({this.milliseconds});
  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}
