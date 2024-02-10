import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fashiontextgrid_item_model.dart';
import 'package:gaurav_s_application1/presentation/homepage_page/models/homepage_model.dart';
part 'homepage_event.dart';
part 'homepage_state.dart';

/// A bloc that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc(HomepageState initialState) : super(initialState) {
    on<HomepageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomepageInitialEvent event,
    Emitter<HomepageState> emit,
  ) async {
    emit(state.copyWith(
        homepageModelObj: state.homepageModelObj?.copyWith(
      fashiontextgridItemList: fillFashiontextgridItemList(),
    )));
  }

  List<FashiontextgridItemModel> fillFashiontextgridItemList() {
    return [
      FashiontextgridItemModel(
          fashionImage: ImageConstant.imgImage2, fashionText: "Fashion")
    ];
  }
}
