// ignore_for_file: must_be_immutable

part of 'payment_gateway_bloc.dart';

/// Represents the state of PaymentGateway in the application.
class PaymentGatewayState extends Equatable {
  PaymentGatewayState({
    this.creditCardvalueController,
    this.paymentGatewayModelObj,
  });

  TextEditingController? creditCardvalueController;

  PaymentGatewayModel? paymentGatewayModelObj;

  @override
  List<Object?> get props => [
        creditCardvalueController,
        paymentGatewayModelObj,
      ];
  PaymentGatewayState copyWith({
    TextEditingController? creditCardvalueController,
    PaymentGatewayModel? paymentGatewayModelObj,
  }) {
    return PaymentGatewayState(
      creditCardvalueController:
          creditCardvalueController ?? this.creditCardvalueController,
      paymentGatewayModelObj:
          paymentGatewayModelObj ?? this.paymentGatewayModelObj,
    );
  }
}
