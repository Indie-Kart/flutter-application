// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:gaurav_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [catthree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CatthreeModel extends Equatable {
  CatthreeModel({
    this.dropdownItemList = const [],
    this.userprofilesectionItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<UserprofilesectionItemModel> userprofilesectionItemList;

  CatthreeModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<UserprofilesectionItemModel>? userprofilesectionItemList,
  }) {
    return CatthreeModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      userprofilesectionItemList:
          userprofilesectionItemList ?? this.userprofilesectionItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, userprofilesectionItemList];
}
