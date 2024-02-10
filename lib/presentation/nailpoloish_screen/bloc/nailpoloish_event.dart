// ignore_for_file: must_be_immutable

part of 'nailpoloish_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Nailpoloish widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NailpoloishEvent extends Equatable {}

/// Event that is dispatched when the Nailpoloish widget is first created.
class NailpoloishInitialEvent extends NailpoloishEvent {
  @override
  List<Object?> get props => [];
}
