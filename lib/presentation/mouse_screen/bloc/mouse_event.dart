// ignore_for_file: must_be_immutable

part of 'mouse_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Mouse widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MouseEvent extends Equatable {}

/// Event that is dispatched when the Mouse widget is first created.
class MouseInitialEvent extends MouseEvent {
  @override
  List<Object?> get props => [];
}
