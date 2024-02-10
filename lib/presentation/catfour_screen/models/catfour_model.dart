// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:gaurav_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'productgrid2_item_model.dart';

/// This class defines the variables used in the [catfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CatfourModel extends Equatable {
  CatfourModel({
    this.dropdownItemList = const [],
    this.productgrid2ItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<Productgrid2ItemModel> productgrid2ItemList;

  CatfourModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<Productgrid2ItemModel>? productgrid2ItemList,
  }) {
    return CatfourModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      productgrid2ItemList: productgrid2ItemList ?? this.productgrid2ItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, productgrid2ItemList];
}
