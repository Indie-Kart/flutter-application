import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/shoe_screen/models/shoe_model.dart';
part 'shoe_event.dart';
part 'shoe_state.dart';

/// A bloc that manages the state of a Shoe according to the event that is dispatched to it.
class ShoeBloc extends Bloc<ShoeEvent, ShoeState> {
  ShoeBloc(ShoeState initialState) : super(initialState) {
    on<ShoeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoeInitialEvent event,
    Emitter<ShoeState> emit,
  ) async {}
}
