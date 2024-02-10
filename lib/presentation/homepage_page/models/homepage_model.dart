// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fashiontextgrid_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel extends Equatable {
  HomepageModel({this.fashiontextgridItemList = const []}) {}

  List<FashiontextgridItemModel> fashiontextgridItemList;

  HomepageModel copyWith(
      {List<FashiontextgridItemModel>? fashiontextgridItemList}) {
    return HomepageModel(
      fashiontextgridItemList:
          fashiontextgridItemList ?? this.fashiontextgridItemList,
    );
  }

  @override
  List<Object?> get props => [fashiontextgridItemList];
}
