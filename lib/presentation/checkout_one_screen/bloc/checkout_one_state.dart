// ignore_for_file: must_be_immutable

part of 'checkout_one_bloc.dart';

/// Represents the state of CheckoutOne in the application.
class CheckoutOneState extends Equatable {
  CheckoutOneState({
    this.nameController,
    this.checkoutOneModelObj,
  });

  TextEditingController? nameController;

  CheckoutOneModel? checkoutOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        checkoutOneModelObj,
      ];
  CheckoutOneState copyWith({
    TextEditingController? nameController,
    CheckoutOneModel? checkoutOneModelObj,
  }) {
    return CheckoutOneState(
      nameController: nameController ?? this.nameController,
      checkoutOneModelObj: checkoutOneModelObj ?? this.checkoutOneModelObj,
    );
  }
}
