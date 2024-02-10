// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'mm_item_model.dart';

/// This class defines the variables used in the [checkout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutModel extends Equatable {
  CheckoutModel({this.mmItemList = const []}) {}

  List<MmItemModel> mmItemList;

  CheckoutModel copyWith({List<MmItemModel>? mmItemList}) {
    return CheckoutModel(
      mmItemList: mmItemList ?? this.mmItemList,
    );
  }

  @override
  List<Object?> get props => [mmItemList];
}
