import 'dart:async';

abstract class LocalDataSource<T> {
  // ignore: close_sinks
  final StreamController<T> dataStreamController = StreamController<T>();
  void dispose();
}
