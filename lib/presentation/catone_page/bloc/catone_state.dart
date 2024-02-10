// ignore_for_file: must_be_immutable

part of 'catone_bloc.dart';

/// Represents the state of Catone in the application.
class CatoneState extends Equatable {
  CatoneState({
    this.selectedDropDownValue,
    this.catoneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  CatoneModel? catoneModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        catoneModelObj,
      ];
  CatoneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    CatoneModel? catoneModelObj,
  }) {
    return CatoneState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      catoneModelObj: catoneModelObj ?? this.catoneModelObj,
    );
  }
}
