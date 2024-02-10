import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mm_item_model.dart';
import 'package:gaurav_s_application1/presentation/checkout_screen/models/checkout_model.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

/// A bloc that manages the state of a Checkout according to the event that is dispatched to it.
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(CheckoutState initialState) : super(initialState) {
    on<CheckoutInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<CheckoutState> emit,
  ) {
    List<MmItemModel> newList =
        List<MmItemModel>.from(state.checkoutModelObj!.mmItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        checkoutModelObj:
            state.checkoutModelObj?.copyWith(mmItemList: newList)));
  }

  List<MmItemModel> fillMmItemList() {
    return List.generate(3, (index) => MmItemModel());
  }

  _onInitialize(
    CheckoutInitialEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        checkoutModelObj:
            state.checkoutModelObj?.copyWith(mmItemList: fillMmItemList())));
  }
}
