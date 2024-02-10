import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productgrid1_item_model.dart';
import 'package:gaurav_s_application1/presentation/cattwo_screen/models/cattwo_model.dart';
part 'cattwo_event.dart';
part 'cattwo_state.dart';

/// A bloc that manages the state of a Cattwo according to the event that is dispatched to it.
class CattwoBloc extends Bloc<CattwoEvent, CattwoState> {
  CattwoBloc(CattwoState initialState) : super(initialState) {
    on<CattwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    CattwoInitialEvent event,
    Emitter<CattwoState> emit,
  ) async {
    emit(state.copyWith(
        cattwoModelObj: state.cattwoModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            productgrid1ItemList: fillProductgrid1ItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CattwoState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<Productgrid1ItemModel> fillProductgrid1ItemList() {
    return [
      Productgrid1ItemModel(
          productName: "HRx T-shirt, Crew Neck, Cotton__ ",
          discountPercentage: "40%",
          originalPrice: "₹499",
          discountedPrice: "₹299",
          deliveryTime: "Delivery by 11 PM, Tomorrow",
          image: ImageConstant.imgTshirtHd1)
    ];
  }
}
