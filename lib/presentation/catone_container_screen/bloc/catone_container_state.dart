// ignore_for_file: must_be_immutable

part of 'catone_container_bloc.dart';

/// Represents the state of CatoneContainer in the application.
class CatoneContainerState extends Equatable {
  CatoneContainerState({this.catoneContainerModelObj});

  CatoneContainerModel? catoneContainerModelObj;

  @override
  List<Object?> get props => [
        catoneContainerModelObj,
      ];
  CatoneContainerState copyWith(
      {CatoneContainerModel? catoneContainerModelObj}) {
    return CatoneContainerState(
      catoneContainerModelObj:
          catoneContainerModelObj ?? this.catoneContainerModelObj,
    );
  }
}
