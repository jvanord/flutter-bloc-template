import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_template/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/bloc/bloc.dart';

class Example2Bloc extends Bloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get example => _exampleSubject.stream;
  Sink<String> get exampleSink => _exampleSubject.sink;
  final StreamController<String> _exampleSubject = StreamController<String>();

  Example2Bloc();

  void dispose() {
    _exampleSubject.close();  
  }
}
