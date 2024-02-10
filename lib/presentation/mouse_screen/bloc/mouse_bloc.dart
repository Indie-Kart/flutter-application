import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/mouse_screen/models/mouse_model.dart';
part 'mouse_event.dart';
part 'mouse_state.dart';

/// A bloc that manages the state of a Mouse according to the event that is dispatched to it.
class MouseBloc extends Bloc<MouseEvent, MouseState> {
  MouseBloc(MouseState initialState) : super(initialState) {
    on<MouseInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MouseInitialEvent event,
    Emitter<MouseState> emit,
  ) async {}
}
