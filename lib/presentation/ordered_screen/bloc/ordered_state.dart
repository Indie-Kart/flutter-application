// ignore_for_file: must_be_immutable

part of 'ordered_bloc.dart';

/// Represents the state of Ordered in the application.
class OrderedState extends Equatable {
  OrderedState({this.orderedModelObj});

  OrderedModel? orderedModelObj;

  @override
  List<Object?> get props => [
        orderedModelObj,
      ];
  OrderedState copyWith({OrderedModel? orderedModelObj}) {
    return OrderedState(
      orderedModelObj: orderedModelObj ?? this.orderedModelObj,
    );
  }
}
