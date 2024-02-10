// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:gaurav_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'productgrid_item_model.dart';

/// This class defines the variables used in the [catone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CatoneModel extends Equatable {
  CatoneModel({
    this.dropdownItemList = const [],
    this.productgridItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<ProductgridItemModel> productgridItemList;

  CatoneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ProductgridItemModel>? productgridItemList,
  }) {
    return CatoneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      productgridItemList: productgridItemList ?? this.productgridItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, productgridItemList];
}
