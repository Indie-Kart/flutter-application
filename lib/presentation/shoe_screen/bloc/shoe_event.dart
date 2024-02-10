// ignore_for_file: must_be_immutable

part of 'shoe_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Shoe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShoeEvent extends Equatable {}

/// Event that is dispatched when the Shoe widget is first created.
class ShoeInitialEvent extends ShoeEvent {
  @override
  List<Object?> get props => [];
}
