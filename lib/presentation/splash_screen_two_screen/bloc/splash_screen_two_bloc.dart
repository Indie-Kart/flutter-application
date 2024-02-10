import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/splash_screen_two_screen/models/splash_screen_two_model.dart';
part 'splash_screen_two_event.dart';
part 'splash_screen_two_state.dart';

/// A bloc that manages the state of a SplashScreenTwo according to the event that is dispatched to it.
class SplashScreenTwoBloc
    extends Bloc<SplashScreenTwoEvent, SplashScreenTwoState> {
  SplashScreenTwoBloc(SplashScreenTwoState initialState) : super(initialState) {
    on<SplashScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashScreenTwoInitialEvent event,
    Emitter<SplashScreenTwoState> emit,
  ) async {}
}
