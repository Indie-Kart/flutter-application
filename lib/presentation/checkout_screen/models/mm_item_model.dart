// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [mm_item_widget] screen.
class MmItemModel extends Equatable {
  MmItemModel({
    this.mm,
    this.isSelected,
  }) {
    mm = mm ?? "MM";
    isSelected = isSelected ?? false;
  }

  String? mm;

  bool? isSelected;

  MmItemModel copyWith({
    String? mm,
    bool? isSelected,
  }) {
    return MmItemModel(
      mm: mm ?? this.mm,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [mm, isSelected];
}
