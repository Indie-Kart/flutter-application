// ignore_for_file: must_be_immutable

part of 'catfour_bloc.dart';

/// Represents the state of Catfour in the application.
class CatfourState extends Equatable {
  CatfourState({
    this.selectedDropDownValue,
    this.catfourModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  CatfourModel? catfourModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        catfourModelObj,
      ];
  CatfourState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    CatfourModel? catfourModelObj,
  }) {
    return CatfourState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      catfourModelObj: catfourModelObj ?? this.catfourModelObj,
    );
  }
}
