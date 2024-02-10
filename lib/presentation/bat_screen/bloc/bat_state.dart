// ignore_for_file: must_be_immutable

part of 'bat_bloc.dart';

/// Represents the state of Bat in the application.
class BatState extends Equatable {
  BatState({this.batModelObj});

  BatModel? batModelObj;

  @override
  List<Object?> get props => [
        batModelObj,
      ];
  BatState copyWith({BatModel? batModelObj}) {
    return BatState(
      batModelObj: batModelObj ?? this.batModelObj,
    );
  }
}
