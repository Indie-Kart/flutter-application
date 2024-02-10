// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:gaurav_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'productgrid1_item_model.dart';

/// This class defines the variables used in the [cattwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CattwoModel extends Equatable {
  CattwoModel({
    this.dropdownItemList = const [],
    this.productgrid1ItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<Productgrid1ItemModel> productgrid1ItemList;

  CattwoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<Productgrid1ItemModel>? productgrid1ItemList,
  }) {
    return CattwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      productgrid1ItemList: productgrid1ItemList ?? this.productgrid1ItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, productgrid1ItemList];
}
