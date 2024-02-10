// ignore_for_file: must_be_immutable

part of 'cattwo_bloc.dart';

/// Represents the state of Cattwo in the application.
class CattwoState extends Equatable {
  CattwoState({
    this.selectedDropDownValue,
    this.cattwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  CattwoModel? cattwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        cattwoModelObj,
      ];
  CattwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    CattwoModel? cattwoModelObj,
  }) {
    return CattwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      cattwoModelObj: cattwoModelObj ?? this.cattwoModelObj,
    );
  }
}
