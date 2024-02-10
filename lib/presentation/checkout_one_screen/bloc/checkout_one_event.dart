// ignore_for_file: must_be_immutable

part of 'checkout_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckoutOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckoutOneEvent extends Equatable {}

/// Event that is dispatched when the CheckoutOne widget is first created.
class CheckoutOneInitialEvent extends CheckoutOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends CheckoutOneEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
