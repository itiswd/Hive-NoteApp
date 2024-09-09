import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('${bloc.runtimeType} $change');
  }

  @override
  void onClose(BlocBase bloc) {
    // implement onClose
  }

  @override
  void onCreate(BlocBase bloc) {
    // implement onCreate
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // implement onTransition
  }
}
