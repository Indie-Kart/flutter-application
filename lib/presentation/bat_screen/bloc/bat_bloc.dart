import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/bat_screen/models/bat_model.dart';
part 'bat_event.dart';
part 'bat_state.dart';

/// A bloc that manages the state of a Bat according to the event that is dispatched to it.
class BatBloc extends Bloc<BatEvent, BatState> {
  BatBloc(BatState initialState) : super(initialState) {
    on<BatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatInitialEvent event,
    Emitter<BatState> emit,
  ) async {}
}
