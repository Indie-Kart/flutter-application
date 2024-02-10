// ignore_for_file: must_be_immutable

part of 'catone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Catone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CatoneEvent extends Equatable {}

/// Event that is dispatched when the Catone widget is first created.
class CatoneInitialEvent extends CatoneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CatoneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
