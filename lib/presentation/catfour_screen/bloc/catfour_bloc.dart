import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productgrid2_item_model.dart';
import 'package:gaurav_s_application1/presentation/catfour_screen/models/catfour_model.dart';
part 'catfour_event.dart';
part 'catfour_state.dart';

/// A bloc that manages the state of a Catfour according to the event that is dispatched to it.
class CatfourBloc extends Bloc<CatfourEvent, CatfourState> {
  CatfourBloc(CatfourState initialState) : super(initialState) {
    on<CatfourInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    CatfourInitialEvent event,
    Emitter<CatfourState> emit,
  ) async {
    emit(state.copyWith(
        catfourModelObj: state.catfourModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            productgrid2ItemList: fillProductgrid2ItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CatfourState> emit,
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

  List<Productgrid2ItemModel> fillProductgrid2ItemList() {
    return [
      Productgrid2ItemModel(
          productImage: ImageConstant.img21,
          productName: "Lakme Absolute Nail Polish, Blue_",
          discountText: "40%",
          priceText: "₹499",
          discountedPriceText: "₹299",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      Productgrid2ItemModel(
          productImage: ImageConstant.img131,
          productName: "WOW Endless Black Kajal___",
          discountText: "40%",
          priceText: "₹499",
          discountedPriceText: "₹299",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      Productgrid2ItemModel(
          productImage: ImageConstant.img141,
          productName: "MAYBELLINE Lipstick, Light Red__",
          discountText: "40%",
          priceText: "₹499",
          discountedPriceText: "₹299",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      Productgrid2ItemModel(
          productImage: ImageConstant.img121,
          productName: "Osis+ FLEWAX, MEN___",
          discountText: "40%",
          priceText: "₹499",
          discountedPriceText: "₹299",
          deliveryText: "Delivery by 11 PM, Tomorrow")
    ];
  }
}
