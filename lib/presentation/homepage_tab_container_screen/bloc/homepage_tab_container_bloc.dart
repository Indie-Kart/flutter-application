import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/homepage_tab_container_screen/models/homepage_tab_container_model.dart';
part 'homepage_tab_container_event.dart';
part 'homepage_tab_container_state.dart';

/// A bloc that manages the state of a HomepageTabContainer according to the event that is dispatched to it.
class HomepageTabContainerBloc
    extends Bloc<HomepageTabContainerEvent, HomepageTabContainerState> {
  HomepageTabContainerBloc(HomepageTabContainerState initialState)
      : super(initialState) {
    on<HomepageTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomepageTabContainerInitialEvent event,
    Emitter<HomepageTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
