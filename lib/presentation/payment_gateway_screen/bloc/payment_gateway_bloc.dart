import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/payment_gateway_screen/models/payment_gateway_model.dart';
part 'payment_gateway_event.dart';
part 'payment_gateway_state.dart';

/// A bloc that manages the state of a PaymentGateway according to the event that is dispatched to it.
class PaymentGatewayBloc
    extends Bloc<PaymentGatewayEvent, PaymentGatewayState> {
  PaymentGatewayBloc(PaymentGatewayState initialState) : super(initialState) {
    on<PaymentGatewayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentGatewayInitialEvent event,
    Emitter<PaymentGatewayState> emit,
  ) async {
    emit(state.copyWith(creditCardvalueController: TextEditingController()));
  }
}
