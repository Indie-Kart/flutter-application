// ignore_for_file: must_be_immutable

part of 'ordered_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ordered widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderedEvent extends Equatable {}

/// Event that is dispatched when the Ordered widget is first created.
class OrderedInitialEvent extends OrderedEvent {
  @override
  List<Object?> get props => [];
}
