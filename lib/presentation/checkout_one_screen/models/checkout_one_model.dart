// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'mm2_item_model.dart';

/// This class defines the variables used in the [checkout_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutOneModel extends Equatable {
  CheckoutOneModel({this.mm2ItemList = const []}) {}

  List<Mm2ItemModel> mm2ItemList;

  CheckoutOneModel copyWith({List<Mm2ItemModel>? mm2ItemList}) {
    return CheckoutOneModel(
      mm2ItemList: mm2ItemList ?? this.mm2ItemList,
    );
  }

  @override
  List<Object?> get props => [mm2ItemList];
}
