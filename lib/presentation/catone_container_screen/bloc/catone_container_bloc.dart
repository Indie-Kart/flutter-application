import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/catone_container_screen/models/catone_container_model.dart';
part 'catone_container_event.dart';
part 'catone_container_state.dart';

/// A bloc that manages the state of a CatoneContainer according to the event that is dispatched to it.
class CatoneContainerBloc
    extends Bloc<CatoneContainerEvent, CatoneContainerState> {
  CatoneContainerBloc(CatoneContainerState initialState) : super(initialState) {
    on<CatoneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CatoneContainerInitialEvent event,
    Emitter<CatoneContainerState> emit,
  ) async {}
}
