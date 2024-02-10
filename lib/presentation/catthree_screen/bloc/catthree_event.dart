// ignore_for_file: must_be_immutable

part of 'catthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Catthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CatthreeEvent extends Equatable {}

/// Event that is dispatched when the Catthree widget is first created.
class CatthreeInitialEvent extends CatthreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CatthreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
