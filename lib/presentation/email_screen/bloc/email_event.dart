// ignore_for_file: must_be_immutable

part of 'email_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Email widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmailEvent extends Equatable {}

/// Event that is dispatched when the Email widget is first created.
class EmailInitialEvent extends EmailEvent {
  @override
  List<Object?> get props => [];
}
