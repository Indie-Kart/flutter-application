import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productgrid_item_model.dart';
import 'package:gaurav_s_application1/presentation/catone_page/models/catone_model.dart';
part 'catone_event.dart';
part 'catone_state.dart';

/// A bloc that manages the state of a Catone according to the event that is dispatched to it.
class CatoneBloc extends Bloc<CatoneEvent, CatoneState> {
  CatoneBloc(CatoneState initialState) : super(initialState) {
    on<CatoneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    CatoneInitialEvent event,
    Emitter<CatoneState> emit,
  ) async {
    emit(state.copyWith(
        catoneModelObj: state.catoneModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            productgridItemList: fillProductgridItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CatoneState> emit,
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

  List<ProductgridItemModel> fillProductgridItemList() {
    return [
      ProductgridItemModel(
          mouseImage: ImageConstant.imgMouseHd1,
          productName: "Logitech TP14 Wireless Mouse___",
          discountText: "40%",
          priceText: "₹499",
          discountedPriceText: "₹299",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      ProductgridItemModel(
          mouseImage: ImageConstant.img37208,
          productName: "Logitech XD Keyboard, RGB, Wi__",
          discountText: "40%",
          priceText: "₹1499",
          discountedPriceText: "₹1299",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      ProductgridItemModel(
          mouseImage: ImageConstant.imgLaptopHd1,
          productName: "MacBook Air M2, 16GB, 512GB___",
          discountText: "05%",
          priceText: "₹150000",
          discountedPriceText: "₹139999",
          deliveryText: "Delivery by 11 PM, Tomorrow")
    ];
  }
}
