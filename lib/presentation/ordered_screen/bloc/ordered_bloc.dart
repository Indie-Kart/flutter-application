import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/ordered_screen/models/ordered_model.dart';
part 'ordered_event.dart';
part 'ordered_state.dart';

/// A bloc that manages the state of a Ordered according to the event that is dispatched to it.
class OrderedBloc extends Bloc<OrderedEvent, OrderedState> {
  OrderedBloc(OrderedState initialState) : super(initialState) {
    on<OrderedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderedInitialEvent event,
    Emitter<OrderedState> emit,
  ) async {}
}
