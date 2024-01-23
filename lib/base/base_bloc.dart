import 'dart:async';
import 'package:demo_movie/base/base_event.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/subjects.dart';


abstract class BaseBloc {

  final StreamController<bool> _loadingStreamController = StreamController<bool>();
  Stream<bool> get loadingStream => _loadingStreamController.stream;
  Sink<bool> get loadingSink => _loadingStreamController.sink;

  final StreamController<BaseEvent> _streamController = BehaviorSubject<BaseEvent>();
  Stream<BaseEvent> get stream => _streamController.stream;
  Sink<BaseEvent> get sink => _streamController.sink;


  @mustCallSuper
  void dispose() {
    _loadingStreamController.close();
    _streamController.close();
  }
}
