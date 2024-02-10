import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:gaurav_s_application1/presentation/catthree_screen/models/catthree_model.dart';
part 'catthree_event.dart';
part 'catthree_state.dart';

/// A bloc that manages the state of a Catthree according to the event that is dispatched to it.
class CatthreeBloc extends Bloc<CatthreeEvent, CatthreeState> {
  CatthreeBloc(CatthreeState initialState) : super(initialState) {
    on<CatthreeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    CatthreeInitialEvent event,
    Emitter<CatthreeState> emit,
  ) async {
    emit(state.copyWith(
        catthreeModelObj: state.catthreeModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            userprofilesectionItemList: fillUserprofilesectionItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CatthreeState> emit,
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

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(
          cricketBatImage: ImageConstant.img111,
          cricketBatText: "GM Professional Cricket Bat ___ ",
          fortyText: "40%",
          priceText: "₹4999",
          priceText2: "₹2999",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      UserprofilesectionItemModel(
          cricketBatImage: ImageConstant.img11,
          cricketBatText: "VECTORx Football, Trident Plus__ ",
          fortyText: "40%",
          priceText: "₹4999",
          priceText2: "₹2999",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      UserprofilesectionItemModel(
          cricketBatImage: ImageConstant.imgBadmintonRacket,
          cricketBatText: "Adidas Badminton Racket___ ",
          fortyText: "40%",
          priceText: "₹4999",
          priceText2: "₹2999",
          deliveryText: "Delivery by 11 PM, Tomorrow"),
      UserprofilesectionItemModel(
          cricketBatImage: ImageConstant.imgChessboardHd1,
          cricketBatText: "Chess Board, Indoor, Wooden__ ",
          fortyText: "40%",
          priceText: "₹499",
          priceText2: "₹299",
          deliveryText: "Delivery by 11 PM, Tomorrow")
    ];
  }
}
