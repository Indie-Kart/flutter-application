import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/nailpoloish_screen/models/nailpoloish_model.dart';
part 'nailpoloish_event.dart';
part 'nailpoloish_state.dart';

/// A bloc that manages the state of a Nailpoloish according to the event that is dispatched to it.
class NailpoloishBloc extends Bloc<NailpoloishEvent, NailpoloishState> {
  NailpoloishBloc(NailpoloishState initialState) : super(initialState) {
    on<NailpoloishInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NailpoloishInitialEvent event,
    Emitter<NailpoloishState> emit,
  ) async {}
}
