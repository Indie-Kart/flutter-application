// ignore_for_file: must_be_immutable

part of 'payment_gateway_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentGateway widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentGatewayEvent extends Equatable {}

/// Event that is dispatched when the PaymentGateway widget is first created.
class PaymentGatewayInitialEvent extends PaymentGatewayEvent {
  @override
  List<Object?> get props => [];
}
