// ignore_for_file: must_be_immutable

part of 'nailpoloish_bloc.dart';

/// Represents the state of Nailpoloish in the application.
class NailpoloishState extends Equatable {
  NailpoloishState({this.nailpoloishModelObj});

  NailpoloishModel? nailpoloishModelObj;

  @override
  List<Object?> get props => [
        nailpoloishModelObj,
      ];
  NailpoloishState copyWith({NailpoloishModel? nailpoloishModelObj}) {
    return NailpoloishState(
      nailpoloishModelObj: nailpoloishModelObj ?? this.nailpoloishModelObj,
    );
  }
}
