// ignore_for_file: must_be_immutable

part of 'catthree_bloc.dart';

/// Represents the state of Catthree in the application.
class CatthreeState extends Equatable {
  CatthreeState({
    this.selectedDropDownValue,
    this.catthreeModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  CatthreeModel? catthreeModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        catthreeModelObj,
      ];
  CatthreeState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    CatthreeModel? catthreeModelObj,
  }) {
    return CatthreeState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      catthreeModelObj: catthreeModelObj ?? this.catthreeModelObj,
    );
  }
}
