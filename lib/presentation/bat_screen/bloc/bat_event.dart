// ignore_for_file: must_be_immutable

part of 'bat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Bat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatEvent extends Equatable {}

/// Event that is dispatched when the Bat widget is first created.
class BatInitialEvent extends BatEvent {
  @override
  List<Object?> get props => [];
}
