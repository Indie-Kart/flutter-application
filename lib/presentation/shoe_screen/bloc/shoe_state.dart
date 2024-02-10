// ignore_for_file: must_be_immutable

part of 'shoe_bloc.dart';

/// Represents the state of Shoe in the application.
class ShoeState extends Equatable {
  ShoeState({this.shoeModelObj});

  ShoeModel? shoeModelObj;

  @override
  List<Object?> get props => [
        shoeModelObj,
      ];
  ShoeState copyWith({ShoeModel? shoeModelObj}) {
    return ShoeState(
      shoeModelObj: shoeModelObj ?? this.shoeModelObj,
    );
  }
}
