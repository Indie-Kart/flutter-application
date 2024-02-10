// ignore_for_file: must_be_immutable

part of 'catfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Catfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CatfourEvent extends Equatable {}

/// Event that is dispatched when the Catfour widget is first created.
class CatfourInitialEvent extends CatfourEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CatfourEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
