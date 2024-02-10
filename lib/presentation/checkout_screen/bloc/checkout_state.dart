// ignore_for_file: must_be_immutable

part of 'checkout_bloc.dart';

/// Represents the state of Checkout in the application.
class CheckoutState extends Equatable {
  CheckoutState({
    this.nameController,
    this.checkoutModelObj,
  });

  TextEditingController? nameController;

  CheckoutModel? checkoutModelObj;

  @override
  List<Object?> get props => [
        nameController,
        checkoutModelObj,
      ];
  CheckoutState copyWith({
    TextEditingController? nameController,
    CheckoutModel? checkoutModelObj,
  }) {
    return CheckoutState(
      nameController: nameController ?? this.nameController,
      checkoutModelObj: checkoutModelObj ?? this.checkoutModelObj,
    );
  }
}
