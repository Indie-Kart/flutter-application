// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [mm2_item_widget] screen.
class Mm2ItemModel extends Equatable {
  Mm2ItemModel({
    this.mm,
    this.isSelected,
  }) {
    mm = mm ?? "MM";
    isSelected = isSelected ?? false;
  }

  String? mm;

  bool? isSelected;

  Mm2ItemModel copyWith({
    String? mm,
    bool? isSelected,
  }) {
    return Mm2ItemModel(
      mm: mm ?? this.mm,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [mm, isSelected];
}
