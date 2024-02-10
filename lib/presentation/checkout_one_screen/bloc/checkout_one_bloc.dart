import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mm2_item_model.dart';
import 'package:gaurav_s_application1/presentation/checkout_one_screen/models/checkout_one_model.dart';
part 'checkout_one_event.dart';
part 'checkout_one_state.dart';

/// A bloc that manages the state of a CheckoutOne according to the event that is dispatched to it.
class CheckoutOneBloc extends Bloc<CheckoutOneEvent, CheckoutOneState> {
  CheckoutOneBloc(CheckoutOneState initialState) : super(initialState) {
    on<CheckoutOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<CheckoutOneState> emit,
  ) {
    List<Mm2ItemModel> newList =
        List<Mm2ItemModel>.from(state.checkoutOneModelObj!.mm2ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        checkoutOneModelObj:
            state.checkoutOneModelObj?.copyWith(mm2ItemList: newList)));
  }

  List<Mm2ItemModel> fillMm2ItemList() {
    return List.generate(3, (index) => Mm2ItemModel());
  }

  _onInitialize(
    CheckoutOneInitialEvent event,
    Emitter<CheckoutOneState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        checkoutOneModelObj: state.checkoutOneModelObj
            ?.copyWith(mm2ItemList: fillMm2ItemList())));
  }
}
